import 'dart:math';

void main() {
  task();
}

void task() {
  // 2. Створіть список numbers зі 100 елементів.
  // Кожен елемент — випадкове число
  // від 0 до 100 (використайте `Random().nextInt(101)`).
  final numbers = List.generate(100, (index) => Random().nextInt(101));

  // 3. Виведіть цей список на екран.
  print(numbers);

  // 4. Виведіть на екран 65-й елемент списку у форматі:
  // "65-й елемент: [значення]".
  print('65-й елемент: ${numbers[64]}');

  // 5. Вставте число 1000000000 на 50-ту позицію списку.
  numbers.insert(50, 1000000000);

  // 6. Видаліть зі списку елементи зі значеннями: 24, 45, 66, 88.
  numbers.removeWhere(
    (element) =>
        element == 24 || element == 45 || element == 66 || element == 88,
  );

  // 6. Видаліть зі списку елементи зі значеннями: 24, 45, 66, 88.
  // Так більше подобається :)
  final toRemove = [24, 45, 66, 88];

  numbers.removeWhere(toRemove.contains);

  // 7. За допомогою циклу for переберіть список. Під час перебору:
  // - Порахуйте суму всіх елементів, що діляться на 3 без залишку.
  // - Виведіть результат.
  var sum = 0;

  for (var i = 0; i < numbers.length; i++) {
    if (numbers[i] % 3 == 0) sum += numbers[i];
  }

  print(sum);

  // 8. Створіть порожній список temp.
  // За допомогою циклу for-in переберіть numbers.
  // Додайте до temp лише ті елементи, що діляться на 2 без залишку.
  final temp = <int>[];

  for (final number in numbers) {
    // if (number % 2 == 0)
    if (number.isEven) temp.add(number);
  }

  // 9. Виведіть довжину списку temp.
  print(temp.length);
}
