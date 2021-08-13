import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/ramda.dart' as R;

void main() {
  final list = [1, 2, 3, 4, 5];
  final f = R.all(R.P, list);

  test('Should return false.', () {
    final isEven = (x) => x % 2 == 0;

    expect(f(isEven), false);
  });

  test('Should return true', () {
    final gt0 = (x) => x > 0;

    expect(f(gt0), true);
  });
}
