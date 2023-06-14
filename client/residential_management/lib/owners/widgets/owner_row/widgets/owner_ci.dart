import 'package:flutter/material.dart';
import 'package:residential_management/tools/ci_formatter.dart';

class OwnerCI extends StatelessWidget {
  const OwnerCI({required this.ci, super.key});

  final String ci;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8 * 3, top: 8 * 1.5),
      child: Text(
        ciFormatter(ci),
        style: const TextStyle(
          fontSize: 14,
          color: Colors.black45,
          height: 1,
        ),
      ),
    );
  }
}
