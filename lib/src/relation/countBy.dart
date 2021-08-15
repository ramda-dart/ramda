import '../function/curryN.dart';
import '../internals/internals.dart' as _;

final countBy = curryN(2, (fn, List list) {
  _.assertFunc(fn);
  return _.reduce(
    (res, e) {
      final item = fn(e);
      res[item] = res.containsKey(item) ? res[item] + 1 : 1;
      return res;
    },
    {},
    list,
  );
});
