import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/ramda.dart' as R;

void main() {
  const list = [1, 2, 3, 4, 5, 6, 7];

  test('Should return only even numbers.', () {
    final res = R.filter((int e) => e % 2 == 0, list);

    expect(res, equals([2, 4, 6]));
  });

  test('Should return only odd numbers', () {
    final res = R.filter((int e) => e % 2 == 1, list);

    expect(res, equals([1, 3, 5, 7]));
  });
}
