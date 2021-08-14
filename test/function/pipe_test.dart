import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/ramda.dart' as R;
import 'dart:math' as math;

void main() {
  test('Should call function in order left-right.', () {
    final f = R.pipe(math.pow, R.negate, R.inc);

    expect(f(3, 4), -80);
  });
}
