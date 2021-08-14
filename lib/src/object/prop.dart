import '../function/curryN.dart';
import '../internals/internals.dart' as _;

final prop = curryN(2, (key, obj) {
  if (_.isList(obj) || _.isString(obj)) {
    _.assertInt(key);

    final k = key >= 0 ? key : obj.length + key;
    return obj.length > k && k >= 0 ? obj[k] : null;
  }

  _.assertMap(obj);
  return obj.containsKey(key) ? obj[key] : null;
});
