import 'package:flutter_test/flutter_test.dart';
import 'package:go_router_internal/app/app.dart';
import 'package:go_router_internal/home/home.dart';

void main() {
  group('App', () {
    testWidgets('renders home page', (tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(HomePage), findsOneWidget);
    });
  });
}
