import 'package:mocky/mocky.dart';

void main() {
  // 2. Створіть список `randomNouns` з 100 різними словами
  // (як це зробити, подивіться в документації  до пакету)
  final randomNouns = Mocky.words(100);
  // 3. Із `randomNouns` створіть Map<String, int> `nounsMap`, де:
  // - ключ — слово;
  // - значення — кількість символів у цьому слові.
  final nounsMap = Map.fromEntries(
    randomNouns.map((e) => MapEntry(e, e.length)),
  );
  // 4. Створіть нову змінну Map<String, int> `nounsMapFiltered`.
  final nounsMapFiltered = Map<String, int>.from(nounsMap);
  // 5. Додайте у `nounsMapFiltered` лише ті пари зі `nounsMap`,
  // де довжина слова — парне число.
  nounsMapFiltered.removeWhere((_, value) => value.isOdd);
  // 6. Виведіть всі ключі зі `nounsMapFiltered`.
  print(nounsMapFiltered.keys);
}
