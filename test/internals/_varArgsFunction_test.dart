import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/src/internals/internals.dart' as _;

void main() {
  group('_.VarArgsFunction', () {
    test('Should allow to pass args.', () {
      int sum(List<int> nums) {
        return _.reduce((int x, int y) => x + y, 0, nums);
      }

      final dynamic varArgsSum = _.VarArgsFunction(sum);

      expect(varArgsSum(1, 2, 3), sum([1, 2, 3]));
    });
  });
}
