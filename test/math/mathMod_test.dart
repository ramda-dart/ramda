import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/ramda.dart' as R;
import 'package:ramda/src/internals/internals.dart' as _;

void main() {
  test('Should calc right mathMod for x & y.', () {
    expect(R.mathMod(-17, 5), 3);
    expect(R.mathMod(17, 5), 2);
    expect(_.isNaN(R.mathMod(17, -5)), true);
    expect(_.isNaN(R.mathMod(17, 0)), true);
    expect(_.isNaN(R.mathMod(17.2, 5)), true);
    expect(_.isNaN(R.mathMod(17, 5.3)), true);
  });
}
