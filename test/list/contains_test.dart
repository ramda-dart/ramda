import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/ramda.dart' as R;

void main() {
  test('Should return true if value exist.', () {
    expect(R.contains(3, [1, 2, 3]), true);
    expect(R.contains({}, [1, {}]), true);
    expect(R.contains(1, [2, 3]), false);
  });
}
