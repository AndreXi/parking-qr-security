import 'package:flutter/material.dart';
import 'package:residential_management/tools/name_formatter.dart';

class OwnerName extends StatelessWidget {
  const OwnerName({required this.firstName, required this.lastName, super.key});

  final String firstName;
  final String lastName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8 * 3, top: 8 * 2),
      child: Text(
        nameFormatter(firstName, lastName),
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          height: 1,
        ),
      ),
    );
  }
}
