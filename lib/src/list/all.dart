import '../function/function.dart';

/// Applying a `predicate` through a list
///
/// Whenever an element of list returns false it terminates the loop and returns
/// false otherwise it returns true after checking the entire list.
final all = curryN(2, (fn, List list) {
  final len = list.length;

  int i = -1;
  while (++i < len) {
    if (!fn(list[i])) {
      return false;
    }
  }

  return true;
});
