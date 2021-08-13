import '../function/curryN.dart';

/// Adds two [num] values.
///
final add = curryN(2, (x, y) {
  return x + y;
});
