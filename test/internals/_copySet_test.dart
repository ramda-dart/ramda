import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/src/internals/internals.dart' as _;

void main() {
  final set = <dynamic>{'x'};

  test('Should return new set.', () {
    expect(_.copySet(set), equals({'x'}));
    expect(_.copySet(set) != set, true);
  });
}
