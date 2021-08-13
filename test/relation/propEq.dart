import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/ramda.dart' as R;

void main() {
  final l = [1, 2, 3];
  final m = {'a': 1, 2: 2};
  final s = 'hello';

  final list = R.propEq(R.P, R.P, l);
  final map = R.propEq(R.P, R.P, m);
  final string = R.propEq(R.P, R.P, s);

  test('Should return true', () {
    expect(list(1, 2), true);
    expect(list(-1, 3), true);
    expect(map('a', 1), true);
    expect(map(2, 2), true);
    expect(string(1, 'e'), true);
    expect(string(-1, 'o'), true);
  });

  test('Should return false', () {
    expect(list(5, null), true);
    expect(list(-5, null), true);
    expect(map('c', null), true);
    expect(map(3, null), true);
    expect(string(5, null), true);
    expect(string(-5, null), true);
  });
}
