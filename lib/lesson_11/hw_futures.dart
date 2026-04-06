void main() {
  task1();
}

Future<String> fetchName(String name) async {
  await Future<void>.delayed(Duration(seconds: 2));
  return 'Мене звати $name';
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
