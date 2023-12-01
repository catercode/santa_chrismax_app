import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:santa/presentation/home.dart';

void main() {
  testWidgets('Widget Test for ChildNotifier', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      const ProviderScope(
        child: MaterialApp(
          home:
              HomeScreen(), // Replace MyWidget with the actual widget using ChildNotifier
        ),
      ),
    );

    // Verify that the initial state is as expected.
    expect(find.text('Initial Child Count: 0'), findsOneWidget);

    // Trigger the fetchChildren method and wait for the state to be updated.
    await tester.tap(find.text('Fetch Children'));
    await tester.pump();

    // Verify that the child count is updated after fetching children.
    expect(find.text('Initial Child Count: 0'), findsNothing);
    expect(find.text('Updated Child Count: 1'), findsOneWidget);

    // Trigger the addChild method and wait for the state to be updated.
    await tester.tap(find.text('Add Child'));
    await tester.pump();

    // Verify that the child count is further updated after adding a child.
    expect(find.text('Updated Child Count: 1'), findsNothing);
    expect(find.text('Final Child Count: 2'), findsOneWidget);

    // Trigger the toggleNiceStatus method and wait for the state to be updated.
    await tester.tap(find.text('Toggle Nice Status'));
    await tester.pump();

    // Verify that the nice status of the child is updated.
    expect(find.text('Nice Status: true'), findsOneWidget);
  });
}
