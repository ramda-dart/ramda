import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/ramda.dart' as R;

void main() {
  test('Should work on lists.', () {
    expect(
      R.ap([R.concat('p '), R.toUpper], ['foo', 'bar']),
      equals(['p foo', 'p bar', 'FOO', 'BAR']),
    );
  });

  test('Should work for string.', () {
    expect(R.ap(R.concat, R.toUpper)('ramda'), 'ramdaRAMDA');
  });

  test('Should throw error.', () {
    expect(() => R.ap([], ''), throwsAssertionError);
    expect(() => R.ap(() {}, ''), throwsAssertionError);
    expect(() => R.ap('', ''), throwsA(isA<TypeError>()));
  });
}
