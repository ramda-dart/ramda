import '../function/curryN.dart';

/// Makes a comparator function out of a function that reports whether
/// the first element is less than the second.
final comparator = curryN(3, (fn, x, y) {
  return fn(x, y)
      ? -1
      : fn(y, x)
          ? 1
          : 0;
});
