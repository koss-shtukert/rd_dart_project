import 'dart:async';

void main() {
  task1();
  task2();
  task3();
}

// Task 6: Стрім з чисел (fromIterable)
//
// Створіть Stream<int> з довільних чисел (наприклад, від 1 до 5)
// за допомогою Stream.fromIterable.
// Виведіть кожне значення з цього стріму, використовуючи конструкцію await for.
// Виведіть кожне значення з цього ж стріму, використовуючи метод listen.
void task1() {
  final stream = Stream.fromIterable([1, 2, 3, 4, 5]);

  Future<void> awaited() async {
    await for (final item in stream) {
      print(item);
    }
  }

  awaited();

  stream.listen(print);
}

// Task 7: Зворотний відлік зі стріму (periodic)
//
// Створіть Stream<int> за допомогою Stream.periodic, який генерує числа
// з затримкою в 1 секунду.
// Обмежте відлік до 10 чисел за допомогою методу take.
// Виведіть кожне число у консоль у форматі:"1...", "2...", "3...", ... "10...".
void task2() {
  Stream.periodic(
    const Duration(seconds: 1),
    (i) => i + 1,
  ).take(10).listen((event) => print('$event...'));
}

// Task 8: Робота з StreamController
//
// Створіть StreamController<String>.
// Додайте до цього контролера кілька довільних рядкових значень вручну
// (наприклад, "Hello", "World", "Dart").
// Прослухайте цей стрім (через метод listen) і виведіть всі значення у консоль.
// Закрийте контролер після додавання всіх значень.
// Використайте callback onDone у методі listen, щоб вивести повідомлення
// "Стрім завершено" після того, як стрім буде закритий.
void task3() {
  final controller = StreamController<String>();

  controller.sink.add('Hello');
  controller.sink.add('World');
  controller.sink.add('Dart');

  controller.stream.listen(print, onDone: () => print('Стрім завершено'));

  controller.close();
}
