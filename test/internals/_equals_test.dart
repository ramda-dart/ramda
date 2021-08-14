import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/src/internals/internals.dart' as _;

void main() {
  test('Should deeply check equality.', () {
    expect(_.equals([], []), true);
    expect(_.equals({}, {}), true);
    expect(_.equals(Set(), Set()), true);
    expect(_.equals(() {}, () {}), false);
    expect(_.equals(1, 1), true);
    expect(_.equals(double.nan, double.nan), true);

    expect(
        _.equals({
          'a': {
            'b': [Set()]
          }
        }, {
          'a': {
            'b': [Set()]
          }
        }),
        true);

    expect(_.equals([1], []), false);
    expect(_.equals([1], [1]), true);
    expect(_.equals([1, 2], [1, 1]), false);
    expect(_.equals({'a': 0}, {}), false);
    expect(_.equals({'a': 0, 'b': 1}, {'a': 0, 'b': 0}), false);
    expect(_.equals({1}, {1, 2}), false);
    expect(_.equals({1, 2}, {1, 3}), false);
  });
}
