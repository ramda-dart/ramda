import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/ramda.dart' as R;

void main() {
  final l = [1, 2, 3];
  final m = {'a': 1, 'b': 2, 'c': 3};

  final list = R.allPass(R.P, l);
  final map = R.allPass(R.P, m);

  test('Should return true.', () {
    expect(list([R.propEq(1, 2), R.propEq(-1, 3)]), true);
    expect(map([R.propEq('a', 1), R.propEq('b', 2)]), true);
  });

  test('Should return false', () {
    expect(list([R.propEq(1, 0)]), false);
    expect(map([R.propEq('a', 5)]), false);
  });
}
