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

    test('_.VarArgsFunction.apply', () {
      final apply = _.VarArgsFunction.apply;
      final l0 = [];
      final l1 = [1];
      final l2 = [1, 2];
      final l3 = [1, 2, 3];
      final l4 = [1, 2, 3, 4];
      final l5 = [1, 2, 3, 4, 5];
      final l6 = [1, 2, 3, 4, 5, 6];
      final l7 = [1, 2, 3, 4, 5, 6, 7];
      final l8 = [1, 2, 3, 4, 5, 6, 7, 8];
      final l9 = [1, 2, 3, 4, 5, 6, 7, 8, 9];
      final l10 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
      final l11 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11];

      final f = (x) => x;
      final dynamic vA = _.VarArgsFunction(f);

      expect(apply(f, [1]), 1);
      expect(apply(vA, l0), l0);
      expect(apply(vA, l1), l1);
      expect(apply(vA, l2), l2);
      expect(apply(vA, l3), l3);
      expect(apply(vA, l4), l4);
      expect(apply(vA, l5), l5);
      expect(apply(vA, l6), l6);
      expect(apply(vA, l7), l7);
      expect(apply(vA, l8), l8);
      expect(apply(vA, l9), l9);
      expect(apply(vA, l10), l10);
      expect(() => apply(vA, l11), throwsException);
    });
  });
}
