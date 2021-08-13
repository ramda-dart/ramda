import '../function/curryN.dart';

/// Checking if a list of functions matches object
///
/// Passing [obj] into every [fns] and whenever a function returns false
/// the entire function return true
/// otherwise returns false after checking all [fns]
///
/// See also:
///   * [all]
final allPass = curryN(2, (List fns, obj) {
  int i = -1;
  while (++i < fns.length) {
    if (!fns[i](obj)) {
      return false;
    }
  }

  return true;
});
