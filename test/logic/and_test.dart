import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/ramda.dart' as R;

void main() {
  test('Should return true.', () {
    expect(R.and(true, true), true);
  });

  test('Should return false.', () {
    expect(R.and(true, false), false);
    expect(R.and(false, true), false);
    expect(R.and(false, false), false);
  });
}
