import '../function/curryN.dart';

/// Return the complement of a predicate function.
///
/// Takes a function f and returns a function g such that if called with the
/// same arguments when f returns a "truthy" value, g returns false and
/// when f returns a "falsy" value g returns true.
final complement = curryN(2, (fn, v) {
  return !fn(v);
});
