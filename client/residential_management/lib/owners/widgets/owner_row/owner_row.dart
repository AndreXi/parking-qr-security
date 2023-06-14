import 'package:flutter/material.dart';
import 'package:residential_management/owners/__generated__/owners.data.gql.dart';
import 'package:residential_management/owners/widgets/owner_row/widgets/building_location_badge.dart';
import 'package:residential_management/owners/widgets/owner_row/widgets/owner_ci.dart';
import 'package:residential_management/owners/widgets/owner_row/widgets/owner_name.dart';
import 'package:residential_management/owners/widgets/owner_row/widgets/owner_properties_row.dart';
import 'package:residential_management/tools/grid_painter.dart';

class OwnerRow extends StatelessWidget {
  const OwnerRow({required this.owner, super.key});

  final GGetOwnersData_owners owner;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      height: 136,
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
            floor: owner.floor,
            buildingName: owner.building.name,
          ),
          OwnerName(firstName: owner.first_name, lastName: owner.last_name),
          OwnerCI(ci: owner.ci),
          const Spacer(),
          OwnerPropertiesRow(
            parkingSlots: owner.parking_slots_aggregate.aggregate?.count ?? 0,
            stores: owner.stores_aggregate.aggregate?.count ?? 0,
          ),
        ],
      ),
    );
  }
}