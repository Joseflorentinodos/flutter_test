import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:micro_app_ds/molecules/cards/ds_card_image_background.dart';

class _FakeHttpClient extends Fake implements HttpClient {}

void main() {
  testWidgets('DsCardImageBackground displays a mock image',
      (WidgetTester tester) async {
    WidgetsFlutterBinding.ensureInitialized();
    debugNetworkImageHttpClientProvider = () => _FakeHttpClient();

    NetworkImage(nonconst('https://via.placeholder.com/88'))
        .resolve(ImageConfiguration.empty);

    await tester.pumpWidget(const MaterialApp(
      home: Scaffold(
        body: DsCardImageBackground(pathImage: ''),
      ),
    ));

    expect(find.byType(Image), findsOneWidget);
  });
}
