import '../internals/internals.dart' as _;
import '../function/curryN.dart';

/// Adjust allows to update an element in list
///
/// Takes in an idx in list range can be nevgative which indicates that starting
/// from the last index.
///
/// Creating a new list with old items and passing [list[idx]] to the passed fn
/// and returns the new list.
final adjust = curryN(3, (int idx, fn, List list) {
  int index = idx >= 0 ? idx : list.length + idx;
  final res = _.copyList(list);
  res[index] = fn(res[index]);
  return res;
});
