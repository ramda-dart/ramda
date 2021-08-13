import '../function/curryN.dart';
import '../internals/internals.dart' as _;

/// Checks if x > y
final gt = curryN(4, _.comparator)((int a, int b) => a > b, (int a) => a == 1);
