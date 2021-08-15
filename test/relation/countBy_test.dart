import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/ramda.dart' as R;

void main() {
  test('Should count by passed fn.', () {
    final res = R.countBy(R.toUpper, ['a', 'a', 'b', 'c', 'b']);
    expect(res, {'A': 2, 'B': 2, 'C': 1});
  });
}
