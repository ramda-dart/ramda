import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/ramda.dart' as R;

void main() {
  test('Should return correct value.', () {
    final f = R.clamp(1, 10);

    expect(f(-5), 1);
    expect(f(15), 10);
    expect(f(4), 4);

    expect(() => R.clamp(10, 1, 0), throwsException);
  });
}
