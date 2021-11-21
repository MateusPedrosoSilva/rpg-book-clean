// ignore_for_file: file_names

import 'package:test/test.dart';
import 'package:rpg_book_clean/features/dices/regularDice.dart';

void main() {
  final dice = RegularDice(sides: 6);

  test('Should return a D6 throw', () {
    expect(dice.rollDice, lessThanOrEqualTo(6));
  });
}
