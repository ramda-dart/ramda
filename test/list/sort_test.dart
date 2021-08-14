import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/ramda.dart' as R;

void main() {
  test('Should sort list.', () {
    expect(R.sort(R.ascend(R.identity), [4, 2, 7, 5]), equals([2, 4, 5, 7]));
    expect(R.sort(R.ascend(R.negate), [4, 2, 7, 5]), equals([7, 5, 4, 2]));
  });
}
