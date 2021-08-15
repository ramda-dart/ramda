import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/ramda.dart' as R;

void main() {
  test('Should count by passed fn.', () {
    final res0 = R.countBy(R.toUpper, ['a', 'a', 'b', 'c', 'b']);
    expect(res0, {'A': 2, 'B': 2, 'C': 1});

    final res1 = R.countBy(R.floor)([1.5, 1.3, 1.7, 2, 2.5]);
    expect(res1, {1: 3, 2: 2});
  });
}
