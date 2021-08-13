import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/ramda.dart' as R;

void main() {
  final list = [1, 2, 3, 4];

  test('Should increment second element.', () {
    final incSecond = R.adjust(1, R.add(1));

    expect(incSecond(list), equals([1, 3, 3, 4]));
  });

  test('Should increment last element.', () {
    final incLast = R.adjust(-1, R.add(1));

    expect(incLast(list), equals([1, 2, 3, 5]));
  });
}
