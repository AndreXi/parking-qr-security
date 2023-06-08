"""
Create seeds for all tables in Hasura

WARNING: This script deletes all .sql files in 'seeds_directory' path
"""

import os
import subprocess
import yaml

def extract_included_names(file_path):
    """Read the tables.yaml where Hasura includes all tables config files"""
    with open(file_path, 'r') as file:
        data = yaml.safe_load(file)
        names = []
        for item in data:
            names.append(item.replace('!include ', '').replace('.yaml', '').replace('_', '.', 1))
    return names


def delete_files_in_folder(folder_path):
    """Remove all the current .sql in folder_path"""
    for file_name in os.listdir(folder_path):
        file_path = os.path.join(folder_path, file_name)
        try:
            if os.path.isfile(file_path) and file_name.endswith('.sql'):
                os.unlink(file_path)
        except Exception as e:
            print(f"Cannot delete {file_path}: {e}")
            exit(1)


def create_seeds(names):
    """Run the hasura command to create seeds for each table"""
    for name in names:
        command = f"hasura seed create {name.replace('.', '_', 1)} --from-table {name} --database-name main"
        subprocess.run(command, shell=True)


if __name__ == '__main__':
    tables_file_path = './metadata/databases/main/tables/tables.yaml'
    seeds_directory = './seeds/main'

    included_names = extract_included_names(tables_file_path)
    delete_files_in_folder(seeds_directory)
    create_seeds(included_names)
    exit(0)
