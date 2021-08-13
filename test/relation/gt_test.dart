import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/ramda.dart' as R;

void main() {
  test('Should return true.', () {
    expect(R.gt(2, 1), true);
  });
}
