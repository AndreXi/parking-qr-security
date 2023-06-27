import 'package:ferry/ferry.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:residential_management/parking_slots_editor/widgets/parking_floor_selector/__generated__/get_parking_floors.data.gql.dart';
import 'package:residential_management/parking_slots_editor/widgets/parking_floor_selector/__generated__/get_parking_floors.req.gql.dart';

class ParkingFloorSelector extends StatelessWidget {
  ParkingFloorSelector({super.key});

  final client = GetIt.I.get<Client>();
  final request = GGetParkingFloorsReq();

  @override
  Widget build(BuildContext context) {
    return Operation(
      operationRequest: request,
      client: client,
      builder: (context, response, error) {
        return Autocomplete<GGetParkingFloorsData_locations>(
          optionsBuilder: (textEditingValue) {
            final options = response?.data?.locations.toList() ?? [];
            return options.where(
              (element) => element.name.toLowerCase().contains(
                    textEditingValue.text.toLowerCase(),
                  ),
            );
          },
          displayStringForOption: (option) => option.name,
          onSelected: (option) {},
        );
      },
    );
  }
}
