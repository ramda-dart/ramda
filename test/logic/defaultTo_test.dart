import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/ramda.dart' as R;

void main() {
  test('Should return default value if pass null or Nan.', () {
    final def10 = R.defaultTo(10);

    expect(def10(null), 10);
    expect(def10(double.nan), 10);
    expect(def10(false), false);
    expect(def10('ramda'), 'ramda');
  });
}
