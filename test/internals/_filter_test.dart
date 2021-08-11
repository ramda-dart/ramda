import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/src/internals/internals.dart' as _;

void main() {
  group('_.filter', () {
    const list = [1, 2, 3, 4, 5, 6, 7];

    test('Should return only even numbers.', () {
      final res = _.filter((int e) => e % 2 == 0, list);

      expect(res, equals([2, 4, 6]));
    });

    test('Should return only odd numbers', () {
      final res = _.filter((int e) => e % 2 == 1, list);

      expect(res, equals([1, 3, 5, 7]));
    });
  });
}
