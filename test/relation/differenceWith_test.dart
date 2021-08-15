import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/ramda.dart' as R;

void main() {
  test('Should get difference between two lists.', () {
    final l1 = [
      {'v': 1},
      {'v': 2}
    ];
    final l2 = [
      {'v': 1},
      {'v': 3}
    ];

    final res = [
      {'v': 2}
    ];
    final res1 = R.differenceWith((x, y) => x['v'] == y['v'], l1, l2);

    expect(res1, equals(res));
    expect(R.difference(l1, l2), equals(res));
    expect(R.difference(l1, []), l1);
    expect(R.difference([], l2), equals([]));

    expect(() => R.differenceWith(null, l1, l2), throwsAssertionError);
  });
}
