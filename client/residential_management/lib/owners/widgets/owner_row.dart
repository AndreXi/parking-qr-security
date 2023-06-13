import 'package:flutter/material.dart';
import 'package:residential_management/functions/name_formatter.dart';
import 'package:residential_management/owners/__generated__/owners.data.gql.dart';

class OwnerRow extends StatelessWidget {
  const OwnerRow({required this.owner, super.key});

  final GGetOwnersData_owners owner;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 277,
      height: 73,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(248, 248, 248, 1),
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(
            offset: Offset(4, 4),
            blurRadius: 8,
            color: Color.fromRGBO(0, 0, 0, 0.25),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BuildingLocationBadge(
            apto: owner.apto,
            floor: owner.floor.toString(),
            buildingName: owner.building.name,
          ),
          OwnerName(firstName: owner.first_name, lastName: owner.last_name),
          OwnerCI(ci: owner.ci),
        ],
      ),
    );
  }
}

class BuildingLocationBadge extends StatelessWidget {
  const BuildingLocationBadge({
    required this.floor,
    required this.apto,
    required this.buildingName,
    super.key,
  });

  final String floor;
  final String apto;
  final String buildingName;

  @override
  Widget build(BuildContext context) {
    const style = TextStyle(
      fontSize: 12,
      color: Colors.white,
      fontWeight: FontWeight.bold,
    );

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(8),
        ),
        color: Color.fromRGBO(90, 100, 109, 0.88),
      ),
      child: Wrap(
        spacing: 8,
        children: [
          Text(floor, style: style),
          Text(apto, style: style),
          Text(buildingName, style: style),
        ],
      ),
    );
  }
}

class OwnerName extends StatelessWidget {
  const OwnerName({required this.firstName, required this.lastName, super.key});

  final String firstName;
  final String lastName;

  @override
  Widget build(BuildContext context) {
    return Text(
      nameFormatter(firstName, lastName),
      style: const TextStyle(
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

class OwnerCI extends StatelessWidget {
  const OwnerCI({required this.ci, super.key});

  final String ci;

  @override
  Widget build(BuildContext context) {
    return Text(
      ci,
      style: const TextStyle(
          fontStyle: FontStyle.italic, color: Color.fromRGBO(0, 0, 0, 0.6)),
    );
  }
}
