import '../function/curryN.dart';
import '../internals/internals.dart' as _;

/// Sorts a list of values.
///
/// Returns a copy of the list, sorted according to the comparator function,
/// which should accept two values at a time and return a negative number
/// if the first value is smaller, a positive number if it's larger,
/// and zero if they are equal. Please note that this is a copy of the list.
/// It does not modify the original.
final sort = curryN(2, (fn, List list) {
  final res = _.copyList(list);
  res.sort((x, y) => fn(x, y));

  return res;
});
