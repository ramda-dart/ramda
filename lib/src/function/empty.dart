import '../function/curryN.dart';
import '../internals/internals.dart' as _;

final empty = curryN(1, (obj) {
  if (_.isList(obj)) return [];
  if (_.isMap(obj)) return {};
  if (_.isSet(obj)) return Set();
  if (_.isString(obj)) return '';

  return null;
});
