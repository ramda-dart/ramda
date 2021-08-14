import '../function/curryN.dart';
import '../internals/internals.dart' as _;

final pipeWith = curryN(1, (fn) {
  _.assertFunc(fn);
});
