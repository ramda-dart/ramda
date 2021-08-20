import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/ramda.dart' as R;

void main() {
  final m1 = {'a': 1, 'b': 5};
  final m2 = {'a': 1};

  test('should return true only if equals', () {
    expect(R.eqProps('a', m1, m2), true);
    expect(R.eqProps('b', m1, m2), false);
  });
}
