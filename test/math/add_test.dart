import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/ramda.dart' as R;

void main() {
  test('Should added two ints.', () {
    final res = R.add(2, 3);

    expect(res, 5);
    expect(res is int, true);
  });

  test('Should add two doubles.', () {
    final res = R.add(2.0, 3.0);

    expect(res, 5);
    expect(res is double, true);
  });

  test('Should add int and double.', () {
    final res = R.add(2.0, 3.0);

    expect(res, 5);
    expect(res is double, true);
  });
}
