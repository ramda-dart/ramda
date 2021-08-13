import '_guards.dart';
import '_assert.dart';

bool comparator(
  bool Function(int, int) compare,
  bool Function(int) compareStr,
  dynamic x,
  dynamic y,
) {
  if (isNum(x) && assertNum(y)) return compare(x, y);
  if ((isString(x) && assertString(y))) return compareStr(x.compareTo(y));

  if ((isList(x) && assertList(y)) || (isSet(x) && assertSet(y)))
    return compare(x.length, y.length);

  if (isMap(x) && assertMap(y)) return compare(x.keys.length, y.keys.length);
  if (isBool(x) && assertBool(y)) return compare((x ? 1 : 0), (y ? 1 : 0));

  throw TypeError();
}
