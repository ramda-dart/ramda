import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/src/internals/internals.dart' as _;

void main() {
  final l = [];

  final m = {'a': l};

  test('Should return new list with same elements.', () {
    final res = _.copyMap(m);

    expect(res != m, true);
    expect(res['a'], l);
  });
}
