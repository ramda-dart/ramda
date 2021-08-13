import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/src/internals/internals.dart' as _;

void main() {
  group('_.VarArgsFunction', () {
    test('Should allow to pass args.', () {
      int sum(List nums) {
        return _.reduce((int x, int y) => x + y, 0, nums);
      }

      final dynamic varArgsSum = _.VarArgsFunction(sum);

      expect(varArgsSum(1, 2, 3), sum([1, 2, 3]));
    });

    test('Should throws if a non function var passed.', () {
      final dynamic foo = (List x) => x;
      final dynamic bar = _.VarArgsFunction(foo);

      expect(() => bar(x: 'test'), throwsA(isA<NoSuchMethodError>()));
      expect(bar(), equals([]));
    });
  });
}
