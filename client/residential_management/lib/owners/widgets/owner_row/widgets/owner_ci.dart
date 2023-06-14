import 'package:flutter/material.dart';

class OwnerCI extends StatelessWidget {
  const OwnerCI({required this.ci, super.key});

  final String ci;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 16),
      child: Text(
        ci,
        style: const TextStyle(
          fontSize: 14,
          color: Color.fromRGBO(0, 0, 0, 0.6),
          height: 1,
        ),
      ),
    );
  }
}
