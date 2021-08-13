import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/ramda.dart' as R;

void main() {
  test('Should return true.', () {
    expect(R.gte(1, 1), true);
    expect(R.gte(2, 1), true);
  });
}
