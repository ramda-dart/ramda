import '../function/curryN.dart';

/// Returns true if predicate returns true for any [list[i]]
final any = curryN(2, (fn, List list) {
  int i = -1;
  while (++i < list.length) {
    if (fn(list[i])) {
      return true;
    }
  }
  return false;
});
