import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/src/internals/internals.dart' as _;

void main() {
  test('toBool.', () {
    expect(_.toBool(''), false);
    expect(_.toBool(null), false);
    expect(_.toBool(double.nan), false);
    expect(_.toBool(0), false);
    expect(_.toBool(false), false);

    expect(_.toBool([]), true);
  });
}
