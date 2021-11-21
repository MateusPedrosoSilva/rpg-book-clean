// ignore_for_file: file_names

import 'dart:math';

class RegularDice {
  final int sides;

  RegularDice({required this.sides});

  int get rollDice {
    Random random = Random();
    int rolledSide = random.nextInt(sides) + 1;
    return rolledSide;
  }
}
