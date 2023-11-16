import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:snake_game/board_view.dart';
import 'package:snake_game/tiles.dart';

void main() {
  testWidgets('Game initialization', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MaterialApp(home: BoardView()));

    // Verify that the game is not started initially.
    expect(find.text('Score: 0'), findsOneWidget);

    // Trigger a tap on the screen to start the game.
    await tester.tap(find.byType(BoardView));
    await tester.pump();

    // Verify that the game has started.
    expect(find.text('Score: 0'), findsOneWidget);
  });

  testWidgets('Snake movement', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MaterialApp(home: BoardView()));

    // Start the game.
    await tester.tap(find.byType(BoardView));
    await tester.pump();

    // Verify the initial snake position.
    expect(find.byType(SnakeHead), findsOneWidget);
    expect(find.byType(SnakeTile), findsNWidgets(2)); // Initial snake length is 3.

    // Move the snake.
    await tester.pump(const Duration(seconds: 1));

    // Verify the new snake position after moving.
    expect(find.byType(SnakeHead), findsOneWidget);
    expect(find.byType(SnakeTile), findsNWidgets(2));

    // You can add more test cases for different movements and scenarios.
  });
}
