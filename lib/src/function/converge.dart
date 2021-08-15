import '../function/curryN.dart';
import '../internals/internals.dart' as _;

final converge = curryN(3, (fn, List fns, arg) {
  final args = _.reduce(
    (res, f) {
      res.add(f(arg));
      return res;
    },
    [],
    fns,
  );

  return _.VarArgsFunction.apply(fn, args);
});
