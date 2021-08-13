import '../function/curryN.dart';

/// Takes [x] and [y] as bool values then evaluates `x && y`
final and = curryN(2, (bool x, bool y) {
  return x && y;
});
