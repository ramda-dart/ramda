import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/ramda.dart' as R;

void main() {
  test('Should return the input.', () {
    final l = [];
    expect(R.identity(l), l);
  });
}
