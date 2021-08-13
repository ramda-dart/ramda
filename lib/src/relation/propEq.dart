import '../function/curryN.dart';
import '../object/prop.dart';

/// Check if [obj[key]] equals value
///
/// Support [String] & [List] with [int] key
/// and [Map] with whatever key
///
/// See also:
///   * [prop]
final propEq = curryN(3, (key, value, obj) {
  return prop(key, obj) == value;
});
