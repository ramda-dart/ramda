import '../function/curryN.dart';
import '../internals/internals.dart' as _;

/// Creates a deep copy of from passed structure.
///
/// Creates a deep copy of the value which may contain (nested) Arrays
/// and Objects, Numbers, Strings, Booleans, Sets.
/// Functions are assigned by reference rather than copied
final clone = curryN(1, (obj) {
  dynamic next(src) {
    if (_.isList(src)) return _.map(next, src);

    if (_.isMap(src)) {
      final Map res = {};
      for (final key in (src as Map).keys) {
        res[key] = next(src[key]);
      }
      return res;
    }

    if (_.isSet(src)) {
      final Set res = {};
      for (final value in src) {
        res.add(next(value));
      }
      return res;
    }

    return src;
  }

  return next(obj);
});
