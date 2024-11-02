import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_application_1/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Uygulamayı oluşturun ve bir frame tetikleyin.
    await tester.pumpWidget(MyApp());

    // Sayacın başlangıç değeri olarak 0'ı doğrulayın.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // '+' simgesine dokunun ve bir frame tetikleyin.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Sayacın 1'e yükseltildiğini doğrulayın.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
