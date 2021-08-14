import '../function/curryN.dart';
import '../internals/internals.dart' as _;

final composeWith = curryN(1, (fn) {
  _.assertFunc(fn);

  dynamic getArgs;
  getArgs = _.VarArgsFunction((List fns) {
    if (fns.isEmpty) return getArgs;

    return _.VarArgsFunction((List args) {});
  });

  return getArgs;
});
