import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:ecobridge/main.dart';

void main() {
  testWidgets('EcoBridge main screen shows welcome text',
      (WidgetTester tester) async {
    await tester.pumpWidget(const EcoBridgeApp());

    // Look for the welcome message
    expect(find.text('Welcome to EcoBridge!'), findsOneWidget);

    // Look for the app name text
    expect(find.textContaining('Eco'), findsOneWidget);
    expect(find.byIcon(Icons.menu), findsOneWidget);
  });
}
