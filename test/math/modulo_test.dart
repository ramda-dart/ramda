import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/ramda.dart' as R;

void main() {
  test('Should return x % y', () {
    expect(R.modulo(2, 2), 2 % 2);
    expect(R.modulo(1, 2), 1 % 2);
    expect(R.modulo(-3, 2), -3 % 2);
    expect(R.modulo(-1.5, -2), -1.5 % -2);
  });
}
