import 'package:test/test.dart';
import 'package:rpg_book_clean/features/adventure/adventure.dart';

void main() {
  final adventure = Adventure(
    actualSkill: 0,
    initialSkill: 0,
    actualStamina: 0,
    initialStamina: 0,
    actualLuck: 0,
    initialLuck: 0,
    gold: 0,
  );

  group('Initiate an adventure | ', () {
    test('should create an adventure with every property 0', () {
      expect(adventure.actualSkill, equals(0));
      expect(adventure.initialSkill, equals(0));
      expect(adventure.actualStamina, equals(0));
      expect(adventure.initialStamina, equals(0));
      expect(adventure.actualLuck, equals(0));
      expect(adventure.initialLuck, equals(0));
      expect(adventure.gold, equals(0));
    });

    test('should initiate the skill for an adventure', () {
      adventure.setInitialSkill();
      expect(adventure.initialSkill, isNotNull);
      expect(adventure.actualSkill, isNotNull);
      expect(adventure.initialSkill, lessThanOrEqualTo(12));
      expect(adventure.initialSkill, greaterThanOrEqualTo(7));
      expect(adventure.actualSkill, lessThanOrEqualTo(12));
      expect(adventure.actualSkill, greaterThanOrEqualTo(7));
    });

    test('should initiate the stamina for an adventure', () {
      adventure.setInitialStamina();
      expect(adventure.initialStamina, isNotNull);
      expect(adventure.actualStamina, isNotNull);
      expect(adventure.initialStamina, lessThanOrEqualTo(24));
      expect(adventure.initialStamina, greaterThanOrEqualTo(14));
      expect(adventure.actualStamina, lessThanOrEqualTo(24));
      expect(adventure.actualStamina, greaterThanOrEqualTo(14));
    });

    test('should initiate the luck for an adventure', () {
      adventure.setInitialLuck();
      expect(adventure.initialLuck, isNotNull);
      expect(adventure.actualLuck, isNotNull);
      expect(adventure.initialLuck, lessThanOrEqualTo(12));
      expect(adventure.initialLuck, greaterThanOrEqualTo(7));
      expect(adventure.actualLuck, lessThanOrEqualTo(12));
      expect(adventure.actualLuck, greaterThanOrEqualTo(7));
    });
  });

  test('should set the initial pack of itens for an adventure', () {
    adventure.setInitialItens();
    // TODO: research for tests with arrays
    // expect(adventure.itens, equals([]));
  });
}
