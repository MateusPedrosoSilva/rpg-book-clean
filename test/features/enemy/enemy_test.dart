import 'dart:math';

import 'package:flutter_test/flutter_test.dart';
import 'package:rpg_book_clean/features/enemy/enemy.dart';

void main() {
  group('Enemy tests |', () {
    Random random = Random();
    // int initialSkill = random.nextInt(14) + 1;
    int initialSkill = 8;
    // int initialStamina = random.nextInt(18) + 1;
    int initialStamina = 10;
    Enemy enemy = Enemy(
      initialSkill: initialSkill,
      initialStamina: initialStamina,
      actualStamina: initialStamina,
    );
    int normalAttack = 2;
    int luckAttack = 4;
    int mischanceAttack = 1;
    test('create a new enemy', () {
      expect(enemy.initialSkill, equals(initialSkill));
      expect(enemy.initialStamina, equals(initialStamina));
      expect(enemy.actualStamina, equals(initialStamina));
    });

    test('Enemy get hurt by a normal attack', () {
      int actualStamina = enemy.actualStamina;
      enemy.getHurt(normalAttack);
      expect(enemy.actualStamina, (actualStamina - normalAttack));
    });

    test('Enemy get hurt by a luck attack', () {
      int actualStamina = enemy.actualStamina;
      enemy.getHurt(luckAttack);
      expect(enemy.actualStamina, (actualStamina - luckAttack));
    });

    test('Enemy get hurt by a mischance attack', () {
      int actualStamina = enemy.actualStamina;
      enemy.getHurt(mischanceAttack);
      expect(enemy.actualStamina, (actualStamina - mischanceAttack));
    });

    // test('Enemy dies', () {
    //   enemy.getHurt();
    //   expect(enemy.actualStamina, (enemy.initialStamina - 4));
    // });
  });
}
