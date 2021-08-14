import '../function/curryN.dart';
import '../internals/internals.dart' as _;

final pipeWith = curryN(2, (fn, List fns) {
  _.assertFunc(fn);
  if (fns.isEmpty)
    throw Exception('Expected `fns` to have length more than 0.');

  return _.VarArgsFunction((List args) {
    return _.pipeWith(fn, fns, args);
  });
});
