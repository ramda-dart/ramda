import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/src/internals/internals.dart' as _;
import 'package:ramda/ramda.dart' as R;
import 'dart:math' as math;

void main() {
  test('_pipeWith', () {
    final fn = (f, res) => f(res);
    final fns = [math.pow, R.negate, R.inc];
    final args = [3, 4];

    expect(_.pipeWith(fn, fns, args), -80);
  });
}
