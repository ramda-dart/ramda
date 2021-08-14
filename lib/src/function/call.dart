import '../function/curryN.dart';
import '../internals/internals.dart' as _;

/// Allows to call a function with args passed spreated max 10 args.
final call = curryN(2, (int n, fn) {
  return curryN(
    n,
    _.arity(n, (List args) {
      return _.VarArgsFunction.apply(fn, args);
    }),
  );
});
