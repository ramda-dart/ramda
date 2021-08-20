import '../function/curryN.dart';
import '../internals/internals.dart' as _;

final either = curryN(2, (v1, v2) {
  if (_.isList(v1) && _.assertList(v2)) {
    return _.reduce((List res, e) {
      res.addAll(_.toBool(e) ? [e] : v2);
      return res;
    }, [], v1);
  }

  if (_.isFunc(v1) && _.assertFunc(v2)) {
    return curryN(1, (arg) {
      return v1(arg) || v2(arg);
    });
  }

  throw Exception(
    'Excepted (Function, Function, dynamic) || '
    '(List, List) but got (${v1.runtimeType}, ${v2.runtimeType})',
  );
});
