import 'package:snake_game/constants.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Check rowSize and colSize values', () {
    expect(rowSize, 12);
    expect(colSize, 10);
  });

  test('Check gameTimerDuration value', () {
    expect(gameTimerDuration, const Duration(milliseconds: 200));
  });

  test('Check SnakeDirection enum values', () {
    expect(SnakeDirection.values, [SnakeDirection.up, SnakeDirection.down, SnakeDirection.right, SnakeDirection.left]);
  });
}