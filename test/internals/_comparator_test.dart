import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/src/internals/internals.dart' as _;
import 'package:ramda/ramda.dart' as R;

class _T {}

void main() {
  final eq = R.curryN(4, _.comparator)(
    (int a, int b) => a == b,
    (int a) => a == 0,
  );

  test('Should return true.', () {
    expect(eq(1, 1), true);
    expect(eq([], []), true);
    expect(eq({1}, {1}), true);
    expect(eq({}, {}), true);
    expect(eq('a', 'a'), true);
    expect(eq(false, false), true);
    expect(() => eq(double.nan, double.nan), throwsA(isA<TypeError>()));
    expect(() => eq(_T(), _T()), throwsA(isA<TypeError>()));
  });
}
