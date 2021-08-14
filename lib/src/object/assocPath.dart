import '../function/curryN.dart';
import '../internals/internals.dart' as _;

/// Should assign the value in path.
///
/// Makes a shallow clone of an object, setting or overriding the nodes
/// required to create the given path, and placing the specific value at
/// the tail end of that path. Note that this copies and flattens prototype
/// properties onto the new object as well.
/// All non-primitive properties are copied by reference.
final assocPath = curryN(3, (List path, value, Map map) {
  dynamic next(int i, Map src) {
    if (i >= path.length) return value;

    final key = path[i++];
    src[key] = next(i, src.containsKey(key) ? _.copyMap(src[key]) : {});

    return src;
  }

  return next(0, _.copyMap(map));
});
