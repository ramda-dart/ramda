import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/src/internals/internals.dart' as _;
import 'package:ramda/ramda.dart' as R;
import 'dart:math' as math;

void main() {
  test('Should call function in order left-right.', () {
    final f = _.pipe([math.pow, R.negate, R.inc]);

    expect(f([3, 4]), -80);
  });
}
