import 'package:flutter/material.dart';
import 'package:residential_management/owners/__generated__/owners.data.gql.dart';
import 'package:residential_management/owners/widgets/owner_row/widgets/building_location_badge.dart';
import 'package:residential_management/owners/widgets/owner_row/widgets/owner_ci.dart';
import 'package:residential_management/owners/widgets/owner_row/widgets/owner_name.dart';
import 'package:residential_management/owners/widgets/owner_row/widgets/owner_properties_row.dart';

class OwnerCard extends StatelessWidget {
  const OwnerCard({required this.owner, super.key});

  final GGetOwnersData_owners owner;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280,
      height: 136,
      child: Card(
        clipBehavior: Clip.hardEdge,
        elevation: 4,
        child: InkWell(
          onTap: () {},
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
                parkingSlots:
                    owner.parking_slots_aggregate.aggregate?.count ?? 0,
                stores: owner.stores_aggregate.aggregate?.count ?? 0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
