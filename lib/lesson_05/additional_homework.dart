void main() {
  task1();
  task2();
  task3();
  task4();
  task5();
}

/// Завдання 1: Калькулятор знижки
/// Є ціна товару та відсоток знижки.
/// Обчисліть фінальну ціну та визначте категорію знижки:
/// >= 50% — "Мега знижка", >= 20% — "Хороша знижка", < 20% — "Мала знижка".
void task1() {
  final price = 1200.0;
  final discount = 35;

  final discountAmount = price * discount / 100;
  final finalPrice = price - discountAmount;

  final category = discount >= 50
      ? 'Мега знижка'
      : discount >= 20
          ? 'Хороша знижка'
          : 'Мала знижка';

  print('Original price: $price');
  print('Discount: $discount%');
  print('Final price: $finalPrice');
  print('Category: $category');
}

/// Завдання 2: Таблиця множення
/// За допомогою вкладених циклів for виведіть таблицю множення
/// для чисел від 1 до 5. Пропустіть результати, що дорівнюють парним числам.
void task2() {
  for (var i = 1; i <= 5; i++) {
    for (var j = 1; j <= 5; j++) {
      final result = i * j;
      if (result.isEven) continue;
      print('$i x $j = $result');
    }
  }
}

/// Завдання 3: Конвертер місяців
/// Створіть змінну monthNumber (1–12).
/// За допомогою switch визначте пору року:
/// 12, 1, 2 — "Зима ❄️", 3–5 — "Весна 🌸", 6–8 — "Літо ☀️", 9–11 — "Осінь 🍂".
/// Додатково: виведіть кількість днів у місяці (лютий — 28).
void task3() {
  final monthNumber = 7;

  final String season;
  final int days;

  switch (monthNumber) {
    case 12 || 1 || 2:
      season = 'Зима ❄️';
      days = monthNumber == 2 ? 28 : 31;
    case 3 || 4 || 5:
      season = 'Весна 🌸';
      days = monthNumber == 4 ? 30 : 31;
    case 6 || 7 || 8:
      season = 'Літо ☀️';
      days = monthNumber == 6 ? 30 : 31;
    case 9 || 10 || 11:
      season = 'Осінь 🍂';
      days = monthNumber == 9 || monthNumber == 11 ? 30 : 31;
    default:
      season = 'Невірний місяць';
      days = 0;
  }

  print('Month: $monthNumber');
  print('Season: $season');
  print('Days: $days');
}

/// Завдання 4: Пошук першого числа Фібоначчі більше за ліміт
/// Використайте цикл while для генерації чисел Фібоначчі.
/// Зупиніться (break), коли число перевищить 100.
/// Порахуйте скільки чисел було згенеровано за допомогою оператора +=.
void task4() {
  var a = 0;
  var b = 1;
  var count = 0;

  while (true) {
    if (a > 100) break;
    print('Fibonacci: $a');
    final next = a + b;
    a = b;
    b = next;
    count += 1;
  }

  print('Total count: $count');
}

/// Завдання 5: Система оцінювання з балами
/// Є список балів за 5 завдань. За допомогою циклу for обчисліть:
/// — загальну суму балів (+=)
/// — середній бал (/)
/// — чи здав студент (середній >= 60) — використайте логічний оператор та if/else.
/// — літерну оцінку через тернарний оператор: >= 90 "A", >= 75 "B", >= 60 "C", < 60 "F".
void task5() {
  final scores = [85, 92, 67, 74, 88];
  var total = 0;

  for (var i = 0; i < scores.length; i++) {
    total += scores[i];
  }

  final average = total / scores.length;
  final passed = average >= 60;

  final grade = average >= 90
      ? 'A'
      : average >= 75
          ? 'B'
          : average >= 60
              ? 'C'
              : 'F';

  print('Scores: $scores');
  print('Total: $total');
  print('Average: $average');

  if (passed) {
    print('Result: Здав ✅');
  } else {
    print('Result: Не здав ❌');
  }

  print('Grade: $grade');
}
