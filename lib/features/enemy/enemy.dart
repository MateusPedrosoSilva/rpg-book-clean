import 'dart:math';

import 'package:rpg_book_clean/features/dices/regularDice.dart';

class Enemy {
  // final String name;
  final int initialSkill;
  final int initialStamina;
  int actualStamina;

  Enemy({
    //required this.name,
    required this.initialSkill,
    required this.initialStamina,
    required this.actualStamina,
  });

  int getHurt(int damage) {
    actualStamina = actualStamina - damage;
    return actualStamina;
  }
}
