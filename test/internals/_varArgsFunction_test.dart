import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/src/internals/internals.dart' as _;

void main() {
  group('_.VarArgsFunction', () {
    test('Should allow to pass args.', () {
      final sum = (List nums) => _.reduce((dynamic x, y) => x + y, 0, nums);
      final dynamic varArgsSum = _.VarArgsFunction(sum as dynamic);

      expect(varArgsSum(1, 2, 3), sum([1, 2, 3]));
    });
  });
}
