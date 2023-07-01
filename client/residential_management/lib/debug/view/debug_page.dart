import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:residential_management/layout/layout.dart';
import 'package:residential_management/router/router.gr.dart';

@RoutePage()
class DebugPage extends StatelessWidget {
  const DebugPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Debug menu'),
      ),
      body: LayoutResponsive(
        index: 0,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              ElevatedButton.icon(
                onPressed: () => context.router.push(const OwnersRoute()),
                icon: const Icon(Icons.person),
                label: const Text('Owners'),
              ),
              ElevatedButton.icon(
                onPressed: () => context.router.push(ParkingSlotsRoute()),
                icon: const Icon(Icons.local_parking),
                label: const Text('Parking Slots'),
              ),
              ElevatedButton.icon(
                onPressed: () =>
                    context.router.push(const ParkingSlotsEditorRoute()),
                icon: const Icon(Icons.edit_road),
                label: const Text('Parking Slots Editor'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
