import '../function/curryN.dart';
import '../internals/internals.dart' as _;
import '../list/concat.dart';

/// Allow to call a curry function with specific number of args and others null.
///
/// Wraps a function of any arity (including nullary) in a function
/// that accepts exactly n parameters. Any extraneous parameters
/// will not be passed to the supplied function.
final nAry = curryN(3, (int n, int argsLength, fn) {
  return curryN(
    n,
    _.arity(n, (List args) {
      return _.VarArgsFunction.apply(
        fn,
        concat(args, List.filled(argsLength - n, null)),
      );
    }),
  );
});
