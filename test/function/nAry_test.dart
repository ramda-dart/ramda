import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/ramda.dart' as R;
import 'package:ramda/src/internals/internals.dart' as _;

void main() {
  test('Should call function with some nulls.', () {
    expect(R.nAry(1, 2, _.arity(2, R.identity))(1), equals([1, null]));
  });
}
