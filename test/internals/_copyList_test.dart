import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/src/internals/internals.dart' as _;

void main() {
  final s = <dynamic>{};
  final m = {};
  final l = [];

  final list = [s, m, l];

  test('Should return new list with same elements.', () {
    final res = _.copyList(list);

    expect(res != list, true);
    expect(res[0], s);
    expect(res[1], m);
    expect(res[2], l);
  });
}
