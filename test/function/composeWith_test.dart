import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/ramda.dart' as R;
import 'dart:math' as math;

void main() {
  test('Should call function in order left-right.', () {
    final f = R.composeWith(R.call, [R.inc, R.negate, math.pow]);
    expect(f(3, 4), -80);
  });
}
