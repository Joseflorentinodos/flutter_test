import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:micro_app_ds/micro_app_ds.dart';

void main() {
  testWidgets('Rendering test DSCardContent', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: DSCardContent(content: Icon(Icons.star)),
        ),
      ),
    );

    expect(find.byIcon(Icons.star), findsNWidgets(1));
  });
}
