import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/ramda.dart' as R;
import 'package:ramda/src/internals/internals.dart' as _;

void main() {
  test('Should return the mean of the given list of numbers.', () {
    expect(_.isNaN(R.mean([])), true);
    expect(R.mean([2, 7, 9]), 6);
  });
}
