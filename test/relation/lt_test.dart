import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/ramda.dart' as R;

class _T {}

void main() {
  test('Should return true.', () {
    expect(R.lt(1, 2), true);
    expect(R.lt([], [1]), true);
    expect(R.lt(<dynamic>{}, {1}), true);
    expect(R.lt({}, {'a': 0}), true);
    expect(R.lt('a', 'b'), true);
    expect(R.lt(false, true), true);
  });

  test('Should return false.', () {
    expect(R.lt(2, 1), false);
    expect(R.lt([1], []), false);
    expect(R.lt({1, 2}, {1}), false);
    expect(R.lt({'a': 0}, {}), false);
    expect(R.lt('b', 'b'), false);
    expect(R.lt(false, false), false);
  });

  test('Should throw type error.', () {
    expect(() => R.lt(double.nan, double.nan), throwsA(isA<TypeError>()));
    expect(() => R.lt(_T(), _T()), throwsA(isA<TypeError>()));
  });
}
