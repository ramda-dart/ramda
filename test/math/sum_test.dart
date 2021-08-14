import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/ramda.dart' as R;

void main() {
  test('Should add together all the elements of a list.', () {
    expect(R.sum([]), 0);
    expect(R.sum([5]), 5);
    expect(R.sum([2, 4, 6, 8, 100, 1]), 121);
  });
}
