import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/ramda.dart' as R;

void main() {
  test('Should complement returned value.', () {
    final isNotNil = R.complement(R.isNil);

    expect(isNotNil(null), false);
    expect(isNotNil(1), true);
  });
}
