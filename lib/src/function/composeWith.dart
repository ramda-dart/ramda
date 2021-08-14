import '../function/curryN.dart';
import '../list/reverse.dart';
import '../internals/internals.dart' as _;

final composeWith = curryN(2, (fn, List fns) {
  _.assertFunc(fn);
  if (fns.isEmpty)
    throw Exception('Expected `fns` to have length more than 0.');

  return _.VarArgsFunction((List args) {
    return _.pipeWith(fn, reverse(fns), args);
  });
});
