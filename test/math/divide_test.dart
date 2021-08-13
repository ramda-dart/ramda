import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/ramda.dart' as R;
import 'package:ramda/src/internals/internals.dart' as _;

void main() {
  test('Should return x / y.', () {
    expect(R.divide(1, 5), 0.2);
    expect(_.isNaN(R.divide(0, 0)), true);
    expect(R.divide(1, 0), double.infinity);
    expect(R.divide(5, 5), 1);
  });
}
