import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/ramda.dart' as R;

void main() {
  test('Should check by Ref.', () {
    final l = [2, 1, 5];
    expect(R.endsWith([], l), true);
    expect(R.endsWith([5], l), true);
    expect(R.endsWith([1, 5], l), true);
    expect(R.endsWith([1], l), false);

    final str = 'abcd';
    expect(R.endsWith('', str), true);
    expect(R.endsWith('d', str), true);
    expect(R.endsWith('cd', str), true);
    expect(R.endsWith('c', str), false);

    expect(() => R.endsWith({}, {}), throwsA(isA<TypeError>()));
  });
}
