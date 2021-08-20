import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/ramda.dart' as R;

void main() {
  test('Should work with list and function.', () {
    final gt10 = R.gt(R.P, 10);
    final isEven = R.compose(R.equals(0), R.modulo(R.P, 2));
    final gt10OrEven = R.either(gt10, isEven);

    expect(gt10OrEven(9), false);
    expect(gt10OrEven(10), true);
    expect(gt10OrEven(50), true);

    final r = R.either([false, double.nan, 15, null, '', 'a'], ['b', 7]);
    expect(r, equals(['b', 7, 'b', 7, 15, 'b', 7, 'b', 7, 'a']));

    expect(() => R.either([], () {}), throwsA(isA<AssertionError>()));
    expect(() => R.either(() {}, []), throwsA(isA<AssertionError>()));
    expect(() => R.either('', ''), throwsException);
  });
}
