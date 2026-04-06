void main() {
  task1();
  task2();
  task3();
  task4();
}

Future<String> fetchName(String name) async {
  await Future<void>.delayed(Duration(seconds: 2));
  return 'Мене звати $name';
}

Future<String> fetchAge() async {
  await Future<void>.delayed(Duration(milliseconds: 1500));
  return '25';
}

// Task 1: Асинхронне отримання імені
//
// Створіть метод Future<String> fetchName(), який імітує асинхронну операцію.
// Цей метод повинен повертати ваше ім'я через 2 секунди
// (використайте Future.delayed та async/await).
// Виведіть результат у консоль у форматі:
// "Мене звати [результат виконання асинхронної операції]".
void task1() {
  fetchName('Костянтин').then(print);
}

// Task 2: Асинхронне отримання віку
//
// Створіть метод Future<String> fetchAge(), який імітує асинхронну операцію.
// Цей метод повинен повертати рядок "25" через 1500 мілісекунд.
// Виведіть результат у консоль у форматі: "Мені [ваш вік] років".
// Реалізуйте логіку, щоб слово "рік" змінювалося відповідно до значення віку
// (наприклад: 21 рік, 22 роки, 25 років).
void task2() {
  fetchAge().then((age) {
    final ageInt = int.parse(age);
    final ageStr = ageInt.toString();

    String word;
    if (ageInt % 10 == 1 && ageInt != 11) {
      word = 'рік';
    } else if ([2, 3, 4].contains(ageInt % 10) &&
        ![12, 13, 14].contains(ageInt)) {
      word = 'роки';
    } else {
      word = 'років';
    }

    print('Мені $ageStr $word');
  });
}

// Task 3: Послідовне виконання Future
//
// Виконайте методи fetchName() та fetchAge() послідовно.
// Виміряйте та виведіть час виконання обох методів.
// Порада. Можете використати для виконання другого пункту
// клас https://api.flutter.dev/flutter/dart-core/Stopwatch-class.html
void task3() {
  final sw = Stopwatch()..start();

  fetchName('Костянтин').then((name) {
    print(name);

    fetchAge().then((age) {
      final ageInt = int.parse(age);
      final ageStr = ageInt.toString();

      String word;
      if (ageInt % 10 == 1 && ageInt != 11) {
        word = 'рік';
      } else if ([2, 3, 4].contains(ageInt % 10) &&
          ![12, 13, 14].contains(ageInt)) {
        word = 'роки';
      } else {
        word = 'років';
      }

      print('Мені $ageStr $word');

      sw.stop();

      print('Час виконання: ${sw.elapsedMilliseconds} мс');
    });
  });
}

// Task 4: Паралельне виконання Future (Future.wait)
//
// Виконайте методи fetchName() та fetchAge() паралельно
// за допомогою Future.wait.
// Виміряйте та виведіть час виконання.
void task4() {
  final sw = Stopwatch()..start();

  Future.wait([fetchName('Костянтин'), fetchAge()]).then((values) {
    print(values[0]);

    final ageInt = int.parse(values[1]);
    final ageStr = ageInt.toString();

    String word;
    if (ageInt % 10 == 1 && ageInt != 11) {
      word = 'рік';
    } else if ([2, 3, 4].contains(ageInt % 10) &&
        ![12, 13, 14].contains(ageInt)) {
      word = 'роки';
    } else {
      word = 'років';
    }

    print('Мені $ageStr $word');

    sw.stop();

    print('Час виконання: ${sw.elapsedMilliseconds} мс');
  });
}
