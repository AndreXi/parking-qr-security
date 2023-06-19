import 'package:auto_route/auto_route.dart';
import 'package:ferry/ferry.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:residential_management/l10n/l10n.dart';
import 'package:residential_management/parking_slots/__generated__/get_parking_slot_stats.req.gql.dart';
import 'package:residential_management/parking_slots/widgets/parking_slot_floor_info.dart';
import 'package:residential_management/parking_slots/widgets/parking_slots_get_stats_error.dart';
import 'package:residential_management/parking_slots/widgets/parking_slots_get_stats_no_data.dart';

@RoutePage()
class ParkingSlotsPage extends StatelessWidget {
  ParkingSlotsPage({super.key});

  final client = GetIt.I<Client>();
  final request = GGetParkingSlotStatsReq();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.parkingSlotsAppBarTitle),
      ),
      body: Operation(
        client: client,
        operationRequest: request,
        builder: (context, response, error) {
          if (response == null || response.hasErrors) {
            return const ParkingSlotsGetStatsError();
          }

          if (response.loading) {
            return const Center(child: CircularProgressIndicator());
          }

          final locations = response.data?.locations;
          if (locations == null || locations.isEmpty) {
            return const ParkingSlotsGetStatsNoData();
          }

          final floorData =
              locations[3].locations_parking_slots_aggregate.aggregate;
          if (floorData != null) {
            return ParkingSlotFloorInfo(
              name: locations[3].name,
              slots: floorData.slots,
              owned: floorData.owned,
              rented: floorData.rented,
            );
          }

          return const Placeholder();
        },
      ),
    );
  }
}
