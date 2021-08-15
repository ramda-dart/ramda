import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/ramda.dart' as R;

void main() {
  test('Should omit the path.', () {
    final m = {
      'a': {
        'b': {'c': 42}
      }
    };
    final res = R.dissocPath(['a', 'b', 'c'], m);

    expect(res, {
      'a': {'b': {}}
    });

    final m2 = {
      'a': {
        'values': [1, 2, 5]
      }
    };
    final res2 = R.dissocPath(['a', 'values', -1], m2);
    expect(res2, {
      'a': {
        'values': [1, 2]
      }
    });
  });
}
