void main() {
  task1();
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
