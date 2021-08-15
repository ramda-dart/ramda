import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/ramda.dart' as R;

void main() {
  test('Should get length of set, list & string.', () {
    expect(R.length([1]), 1);
    expect(R.length('test'), 4);
    expect(R.length({'x', 'y'}), 2);
    expect(() => R.length({}), throwsA(isA<TypeError>()));
  });
}
