import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/ramda.dart' as R;
import 'dart:math' as math;

void main() {
  test('Should call function in order left-right.', () {
    final f = R.compose(R.inc, R.negate, math.pow);

    f(3, 4);
    // expect(f(3, 4), -80);
  });
}
