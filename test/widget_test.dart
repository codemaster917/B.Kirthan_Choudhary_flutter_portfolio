import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:kirthan_flutter_portfolio/main.dart';

void main() {
  testWidgets('Home screen shows the name and nav buttons',
      (WidgetTester tester) async {
    await tester.pumpWidget(const PortfolioApp());

    expect(find.text('B. Kirthan Choudhary'), findsOneWidget);
    expect(find.text('About Me'), findsOneWidget);
    expect(find.text('Projects'), findsOneWidget);
  });
}
