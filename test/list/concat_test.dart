import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/ramda.dart' as R;

void main() {
  test('Should concat string or list.', () {
    expect(R.concat('r', 'a'), 'ra');
    expect(R.concat([], []), equals([]));
    expect(R.concat([1], [2]), equals([1, 2]));
    expect(() => R.concat({}, []), throwsA(isA<TypeError>()));
  });
}
