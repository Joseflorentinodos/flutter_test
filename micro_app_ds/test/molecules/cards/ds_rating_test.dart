import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:micro_app_ds/micro_app_ds.dart';

void main() {
  testWidgets('Rendering test DSRating', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: DSRating(),
        ),
      ),
    );

    expect(find.byType(DSRating), findsOneWidget);
  });

  testWidgets('DSRating displays the correct number of stars (4)',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: DSRating(rating: 4.2),
        ),
      ),
    );

    expect(find.byIcon(Icons.star), findsNWidgets(4));
  });

  testWidgets('DSRating displays the correct number of stars (0)',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: DSRating(rating: 0.3),
        ),
      ),
    );

    expect(find.byIcon(Icons.star), findsNWidgets(0));
  });
}
