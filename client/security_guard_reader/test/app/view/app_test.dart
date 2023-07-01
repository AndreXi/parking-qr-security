import 'package:flutter_test/flutter_test.dart';
import 'package:security_guard_reader/app/app.dart';
import 'package:security_guard_reader/home/view/home_page.dart';

void main() {
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(App());
      expect(find.byType(HomePage), findsOneWidget);
    });
  });
}
