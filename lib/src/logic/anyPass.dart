import '../function/curryN.dart';

/// Returns true if any predicate returns true for any [fns[i]].
final anyPass = curryN(2, (List fns, obj) {
  int i = -1;
  while (++i < fns.length) {
    if (fns[i](obj)) {
      return true;
    }
  }
  return false;
});
