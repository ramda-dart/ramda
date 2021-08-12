import '../internals/internals.dart' as _;
import 'curryN.dart';

/// Filter [List<T>] into [List<T>]
///
/// Loops through [list] and passes [list[i]] into [predicate]
/// if the [predicate] returns `true` then the [list[i]] included
/// in the new `list` otherwise [list[i]] removed.
final filter = curryN(2, (fn, list) {
  return _.filter(fn, list);
});
