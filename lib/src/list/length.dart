import '../function/curryN.dart';
import '../internals/internals.dart' as _;

final length = curryN(1, (value) {
  if (_.isList(value) || _.isString(value) || _.isSet(value))
    return value.length;

  throw TypeError();
});
