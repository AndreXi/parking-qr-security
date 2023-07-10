import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:security_guard_reader/app/app.dart';

void main() {
  group('App', () {
    testWidgets('renders MaterialApp', (tester) async {
      await tester.pumpWidget(App());
      expect(find.byType(MaterialApp), findsOneWidget);
    });
  });
}
