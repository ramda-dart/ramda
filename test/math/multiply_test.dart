import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/ramda.dart' as R;

void main() {
  test('Should return x * y.', () {
    expect(R.multiply(1, 2), 2);
    expect(R.multiply(5, 2.0), 10);
  });
}
