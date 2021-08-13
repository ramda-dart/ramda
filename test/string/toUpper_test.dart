import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/ramda.dart' as R;

void main() {
  test('Should turn string into uppercase.', () {
    expect(R.toUpper('r'), 'R');
    expect(() => R.toUpper([]), throwsA(isA<TypeError>()));
  });
}
