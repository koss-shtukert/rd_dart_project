import 'package:rd_dart_project/lesson_07/homework/names_deepseek.dart';
import 'package:rd_dart_project/lesson_07/homework/names_gpt.dart';

void main() {
  // 4. В методі main cтворіть новий Set зі спільними іменами обох списків
  // (names_deepseek та names_gpt). Виведіть кількість елементів у цій множині.
  final set1 = <String>{...ukrainianNamesDeepseek, ...ukrainianNamesGPT};
  print('set1: $set1');
  print('set1 count: ${set1.length}');

  //union
  final set2 = ukrainianNamesDeepseek.union(ukrainianNamesGPT);
  print('set2: $set2');
  print('set2 count: ${set2.length}');

  // 5. Створіть множину з іменами, що є в `ukrainianNamesGPT`, але яких немає
  // в `ukrainianNamesDeepseek`. Виведіть ці імена.
  final diff1 = ukrainianNamesGPT.difference(ukrainianNamesDeepseek);
  print('diff1: $diff1');

  // 6. Створіть множину з іменами, що є в `ukrainianNamesDeepseek`, але яких
  // немає в `ukrainianNamesGPT`. Виведіть ці імена.
  final diff2 = ukrainianNamesDeepseek.difference(ukrainianNamesGPT);
  print('diff2: $diff2');

  // intersections
  final intersection1 = ukrainianNamesGPT.intersection(ukrainianNamesDeepseek);
  print('intersection1: $intersection1');

  final intersection2 = ukrainianNamesDeepseek.intersection(ukrainianNamesGPT);
  print('intersection2: $intersection2');
}
