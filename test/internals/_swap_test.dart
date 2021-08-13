import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/src/internals/internals.dart' as _;

void main() {
  final list = [1, 2, 3, 4];

  test('Should swap idx1, idx2 position.', () {
    expect(_.swap(list, 0, 1), equals([2, 1, 3, 4]));
  });

  test('Should through range error.', () {
    expect(() => _.swap(list, 0, 10), throwsA(isA<RangeError>()));
  });
}
