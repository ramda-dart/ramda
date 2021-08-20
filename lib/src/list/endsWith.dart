import '../function/curryN.dart';
import '../internals/internals.dart' as _;

final endsWith = curryN(2, (end, obj) {
  if (_.isString(obj) && _.assertString(end)) {
    return end.length == 0 ? true : obj.endsWith(end);
  }

  if (_.isList(obj) && _.assertList(end)) {
    return end.length == 0
        ? true
        : _.equals(end, obj.sublist(obj.length - end.length));
  }

  throw TypeError();
});
