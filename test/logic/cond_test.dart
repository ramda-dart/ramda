import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/ramda.dart' as R;

void main() {
  test('Should return first accepted condition.', () {
    final fn = R.cond([
      [R.equals(0), R.always('water freezes at 0°C')],
      [R.equals(100), R.always('water boils at 100°C')],
      [R.F, R.identity],
      [R.T, (temp) => 'nothing special happens at $temp°C']
    ]);

    expect(fn(0), 'water freezes at 0°C');
    expect(fn(50), 'nothing special happens at 50°C');
    expect(fn(100), 'water boils at 100°C');
  });
}
