import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/ramda.dart' as R;

void main() {
  test('Should curry any function.', () {
    final div = R.curryN(2, (x, y) => x / y);
    final by0 = div(R.P, 0);

    expect(by0(1), double.infinity);

    final foo = (a, b, c, d) => a + 3.2 * b + 2 * c + 4 * d;
    final calc = R.curryN(4, foo);

    expect(calc()(R.P, 2, 3)(R.P, 2)(1), foo(1, 2, 3, 2));
  });
}
