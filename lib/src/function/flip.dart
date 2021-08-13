import '../function/curryN.dart';
import '../internals/internals.dart' as _;

/// Flip first two args of function
///
/// Returns a new function much like the supplied one,
/// except that the first two arguments' order is reversed.
final flip = curryN(2, (int length, fn) {
  return curryN(
    length,
    _.arity(length, (List args) {
      final v = args.length < 2 ? args : _.swap(args, 0, 1);
      return _.VarArgsFunction.apply(fn, v);
    }),
  );
});
