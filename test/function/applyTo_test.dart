import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/ramda.dart' as R;

void main() {
  test('Should pass the arg into fn.', () {
    expect(R.applyTo(1, R.add(1)), 2);
    expect(R.applyTo({'a': 1}, R.propEq('a', 1)), true);
  });
}
