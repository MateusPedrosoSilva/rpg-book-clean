import 'package:rpg_book_clean/features/dices/regularDice.dart';

class Adventure {
  int actualSkill;
  int initialSkill;
  int actualStamina;
  int initialStamina;
  int actualLuck;
  int initialLuck;
  int gold;

  Adventure({
    required this.actualSkill,
    required this.initialSkill,
    required this.actualStamina,
    required this.initialStamina,
    required this.actualLuck,
    required this.initialLuck,
    required this.gold,
  });

  int setInitialSkill() {
    RegularDice d6 = RegularDice(sides: 6);
    initialSkill = d6.rollDice + 6;
    actualSkill = initialSkill;
    return initialSkill;
  }

  int setInitialStamina() {
    RegularDice d6 = RegularDice(sides: 6);
    int dice1 = d6.rollDice;
    int dice2 = d6.rollDice;
    initialStamina = dice1 + dice2 + 12;
    actualStamina = initialStamina;
    return initialStamina;
  }

  int setInitialLuck() {
    RegularDice d6 = RegularDice(sides: 6);
    int dice1 = d6.rollDice;
    initialLuck = dice1 + 6;
    actualLuck = initialLuck;
    return initialLuck;
  }

  void setInitialItens() {}
}
