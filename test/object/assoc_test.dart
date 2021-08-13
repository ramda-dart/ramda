import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/ramda.dart' as R;

void main() {
  test('Should append the new key.', () {
    expect(R.assoc('a', 1, {}), equals({'a': 1}));
    expect(R.assoc(1, 1, {}), equals({1: 1}));

    final l = [];
    expect(R.assoc(l, 1, {}), equals({l: 1}));
  });
}
