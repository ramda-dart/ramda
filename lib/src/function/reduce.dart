import '../internals/internals.dart' as _;
import 'curryN.dart';

/// Reduces [List<T>] into [R]
///
/// Loops through [list] then passes [init] & [list[i]] to fn
/// then passes the result of first loop and [list[i + 1]] and so on.
final reduce = curryN(3, (fn, init, list) {
  return _.reduce(fn, init, list);
});
