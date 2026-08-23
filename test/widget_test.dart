import 'package:flutter_test/flutter_test.dart';

import 'package:albaniy_audio_app/main.dart';

void main() {
  testWidgets('App boots and shows the scholar header', (tester) async {
    await tester.pumpWidget(const IslamicAudioApp());

    expect(
      find.text('Albaniy Zaria Qurdubi'),
      findsOneWidget,
    );
  });

  testWidgets('Tapping the scholar header opens About Scholar',
      (tester) async {
    await tester.pumpWidget(const IslamicAudioApp());

    await tester.tap(find.byTooltip('About the Scholar'));
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 400));

    expect(find.text('Introduction'), findsOneWidget);
    expect(find.text('Early Life and Education'), findsOneWidget);
  });
}