import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/ramda.dart' as R;

void main() {
  test('Should return a deep copy.', () {
    final l = [];
    final Set s = {};
    final m = {};

    final Map src = {
      'a': 1,
      'b': l,
      'c': {'a': s},
      'd': m
    };
    final Map res = R.clone(src);

    expect(src != res, true);
    expect(res, equals(src));
    expect(res['b'] != l, true);
    expect(res['d'] != m, true);
    expect(res['c']['a'] != s, true);
  });
}
