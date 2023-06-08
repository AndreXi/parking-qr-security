# DB Diagram and Design

Using **dbdiagram** and **BDML** in `./docs/dbdiagram/main.bdml`
https://dbdiagram.io/d/6476c7767764f72fcf24e65b

---

### Deploy Hasura

1. Start the container
2. Apply metadata and migrations
3. Apply seeds
4. Start the console

```sh
docker compose up -d
hasura deploy
hasura seed apply
hasura console
```

---

### Get the seeds

To make seeds from all tables run the command:

```bash
python3 seedgen.py
```

TODO: Add to seedgen.py the option to create a seed for one o some tables.

---

### Get the schema

To get the schema run:

```bash
get-graphql-schema http://localhost:8080/v1/graphql > schema.graphql
```
