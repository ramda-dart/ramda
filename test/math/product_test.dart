import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/ramda.dart' as R;

void main() {
  test('Should multiply all the elements of a list.', () {
    expect(R.product([]), 1);
    expect(R.product([2]), 2);
    expect(R.product([2, 4, 6, 8, 100, 1]), 38400);
  });
}
