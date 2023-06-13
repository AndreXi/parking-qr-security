import 'package:flutter/material.dart';
import 'package:residential_management/functions/name_formatter.dart';
import 'package:residential_management/owners/__generated__/owners.data.gql.dart';

class OwnerRow extends StatelessWidget {
  const OwnerRow({required this.owner, super.key});

  final GGetOwnersData_owners owner;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        children: [
          FloorAptoCircle(apto: owner.apto, floor: owner.floor.toString()),
          Text(
            nameFormatter(owner.first_name, owner.last_name),
            style: TextStyle(
              fontSize: 32.0,
              fontFamily: 'Inter',
            ),
          ),
        ],
      ),
    );
  }
}

class FloorAptoCircle extends StatelessWidget {
  const FloorAptoCircle({required this.floor, required this.apto, super.key});

  final String floor;
  final String apto;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24.0),
      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.amber),
      child: Column(
        children: [
          Text(
            floor,
            style: TextStyle(fontSize: 32.0),
          ),
          Text(
            apto + 'aaaaaaa',
            style: TextStyle(fontSize: 16.0),
          ),
        ],
      ),
    );
  }
}
