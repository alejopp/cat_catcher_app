import 'package:cat_catcher_app/app.dart';
import 'package:cat_catcher_app/shared/presentation/widgets/custom_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() async {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  await dotenv.load();

  testWidgets('Landing screen is loaded and shows a cat list',
      (WidgetTester tester) async {
    await tester.pumpWidget(ProviderScope(child: App()));
    await tester.pumpAndSettle(Duration(seconds: 2));

    // Verifies that AppBar has the right Title
    expect(find.text('Catbreeds'), findsOneWidget);

    // Verifies cat's breeds has at least one element
    expect(find.byType(SliverList), findsOneWidget);
    expect(find.byType(CustomCardWidget), findsWidgets);
  });

  testWidgets('Search a cat breed from filtered list',
      (WidgetTester tester) async {
    await tester.pumpWidget(ProviderScope(child: App()));
    await tester.pumpAndSettle(Duration(seconds: 2));

    // Write in searchbar
    await tester.enterText(find.byType(TextField), 'Siamese');
    await tester.pumpAndSettle();

    // Verify that only appears the filtered result
    final sliverListFinder = find.byType(SliverList);
    expect(
        find.descendant(of: sliverListFinder, matching: find.text('Siamese')),
        findsOneWidget);
  });

  testWidgets('Navigate to details when pressing "Ver más"',
      (WidgetTester tester) async {
    await tester.pumpWidget(ProviderScope(child: App()));
    await tester.pumpAndSettle(Duration(seconds: 2));

    // Touch "Ver más" button in card
    await tester.tap(find.text('Más...').first);
    await tester.pumpAndSettle();

    // Verify that detail screen is shown
    expect(find.byType(Image), findsOneWidget);
  });
}
