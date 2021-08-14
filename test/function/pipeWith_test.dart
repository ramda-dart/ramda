import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/ramda.dart' as R;
import 'dart:math' as math;

void main() {
  test('Should call function in order left-right.', () {
    expect(() => R.pipeWith(R.call, []), throwsException);

    final f = R.pipeWith(R.call, [math.pow, R.negate, R.inc]);
    expect(f(3, 4), -80);
  });
}
