import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/ramda.dart' as R;
import 'package:ramda/src/internals/internals.dart' as _;

void main() {
  test('Should return the median of the given list of numbers.', () {
    expect(_.isNaN(R.median([])), true);
    expect(R.median([2, 9, 7]), 7);
    expect(R.median([7, 2, 10, 9]), 8);
  });
}
