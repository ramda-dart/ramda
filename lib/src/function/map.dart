import '../internals/internals.dart' as _;
import 'curryN.dart';

/// Maps [List<T>] into [List<R>]
///
/// Loops through [list] and passes [list[i]] into [fn]
/// Returns back a [List<R>] with results of fn.
final map = curryN(2, (fn, list) {
  return _.map(fn, list);
});
