import '../function/curryN.dart';
import '../internals/internals.dart' as _;

final dropRepeatsWith = curryN(2, (fn, List list) {
  _.assertFunc(fn);
  final List res = [];

  int i = -1;
  while (++i < list.length - 1) {
    if (fn(list[i], list[i + 1])) continue;
    res.add(list[i]);
  }

  return res;
});
