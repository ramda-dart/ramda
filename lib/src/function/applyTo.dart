import '../function/curryN.dart';

/// Takes a value and applies a function to it.
final applyTo = curryN(2, (arg, fn) {
  return fn(arg);
});
