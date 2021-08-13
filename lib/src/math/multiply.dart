import '../function/curryN.dart';

/// Multiplies two numbers. Equivalent to [x] * [x] but curried.
final multiply = curryN(2, (num x, num y) => x * y);
