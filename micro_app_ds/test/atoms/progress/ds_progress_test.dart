import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:micro_app_ds/atoms/progress/ds_progress.dart';

void main() {
  testWidgets('Rendering test DSProgress', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: DSProgress(),
        ),
      ),
    );

    expect(find.byType(DSProgress), findsOneWidget);
  });
}
