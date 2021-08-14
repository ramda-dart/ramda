import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/ramda.dart' as R;

void main() {
  test('Should negate arg.', () {
    expect(R.negate(1), -1);
  });
}
