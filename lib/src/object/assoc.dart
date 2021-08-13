import '../function/curryN.dart';
import '../internals/internals.dart' as _;

/// Appends new key with specific value to the object.
///
/// Makes a shallow clone of an object, setting or overriding the specified
/// property with the given value. Note that this copies and flattens
/// prototype properties onto the new object as well.
/// All non-primitive properties are copied by reference.
final assoc = curryN(3, (key, value, Map obj) {
  final res = _.copyMap(obj);
  res[key] = value;

  return res;
});
