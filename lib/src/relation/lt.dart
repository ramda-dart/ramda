import 'package:ramda/src/function/curryN.dart';
import '../function/curryN.dart';
import '../internals/internals.dart' as _;

/// Checks if x < y
final lt = curryN(2, (x, y) {
  if (_.isNum(x) && _.assertNum(y)) return x < y;
  if ((_.isString(x) && _.assertString(y))) return x.compareTo(y) == -1;

  if ((_.isList(x) && _.assertList(y)) || (_.isSet(x) && _.assertSet(y)))
    return x.length < y.length;

  if (_.isMap(x) && _.assertMap(y)) return x.keys.length < y.keys.length;
  if (_.isBool(x) && _.assertBool(y)) return (x ? 1 : 0) < (y ? 1 : 0);

  throw TypeError();
});
