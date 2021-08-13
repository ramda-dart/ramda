import '../function/curryN.dart';
import '../relation/lt.dart';
import '../relation/gt.dart';

/// Makes an ascending comparator function out of a function.
///
/// Returns a value that can be compared with < and >.
final ascend = curryN(3, (selector, x, y) {
  final v1 = selector(x);
  final v2 = selector(y);

  return lt(v1, v2)
      ? -1
      : gt(v1, v2)
          ? 1
          : 0;
});
