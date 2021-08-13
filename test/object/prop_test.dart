import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/ramda.dart' as R;

void main() {
  final s = 'str';
  final l = [1, 2, 3];
  final m = {'a': 1, 2: 0};

  final string = R.prop(R.P, s);
  final list = R.prop(R.P, l);
  final map = R.prop(R.P, m);

  test('Should return the correct value.', () {
    expect(string(1), 't');
    expect(string(-1), 'r');
    expect(list(1), 2);
    expect(list(-1), 3);
    expect(map('a'), 1);
    expect(map(2), 0);
  });

  test('Should return null.', () {
    expect(string(5), null);
    expect(string(-5), null);
    expect(list(5), null);
    expect(list(-5), null);
    expect(map('c'), null);
  });

  test('Should throw an Exception.', () {
    expect(() => string('a'), throwsAssertionError);
    expect(() => list('a'), throwsAssertionError);
    expect(() => R.prop(<dynamic>{}, 'a'), throwsAssertionError);
  });
}
