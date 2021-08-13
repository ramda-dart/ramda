import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/ramda.dart' as R;

void main() {
  test('Should sub y from x.', () {
    expect(R.subtract(1, 2), -1);
    expect(R.subtract(2, 1), 1);
    expect(R.subtract(1, 1), 0);
  });
}
