import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/src/internals/internals.dart' as _;

void main() {
  final f = (List args) => args;
  final f0 = _.arity(0, f)();
  final f1 = _.arity(1, f)(1);
  final f2 = _.arity(2, f)(1, 2);
  final f3 = _.arity(3, f)(1, 2, 3);
  final f4 = _.arity(4, f)(1, 2, 3, 4);
  final f5 = _.arity(5, f)(1, 2, 3, 4, 5);
  final f6 = _.arity(6, f)(1, 2, 3, 4, 5, 6);
  final f7 = _.arity(7, f)(1, 2, 3, 4, 5, 6, 7);
  final f8 = _.arity(8, f)(1, 2, 3, 4, 5, 6, 7, 8);
  final f9 = _.arity(9, f)(1, 2, 3, 4, 5, 6, 7, 8, 9);
  final f10 = _.arity(10, f)(1, 2, 3, 4, 5, 6, 7, 8, 9, 10);

  test('Should return fn with provided length.', () {
    expect(f0, equals([]));
    expect(f1, equals([1]));
    expect(f2, equals([1, 2]));
    expect(f3, equals([1, 2, 3]));
    expect(f4, equals([1, 2, 3, 4]));
    expect(f5, equals([1, 2, 3, 4, 5]));
    expect(f6, equals([1, 2, 3, 4, 5, 6]));
    expect(f7, equals([1, 2, 3, 4, 5, 6, 7]));
    expect(f8, equals([1, 2, 3, 4, 5, 6, 7, 8]));
    expect(f9, equals([1, 2, 3, 4, 5, 6, 7, 8, 9]));
    expect(f10, equals([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]));
    expect(
      () => _.arity(11, f)(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11),
      throwsException,
    );
  });
}
