import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/ramda.dart' as R;

void main() {
  test('Should assign the value in path.', () {
    final m = {
      'a': {'z': 1}
    };
    final res = {
      'a': {
        'z': 1,
        'b': {'c': 1}
      }
    };

    expect(R.assocPath(['a', 'b', 'c'], 1, m), equals(res));
    expect(
        m,
        equals({
          'a': {'z': 1}
        }));
  });
}
