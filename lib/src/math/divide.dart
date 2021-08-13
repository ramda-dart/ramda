import '../function/curryN.dart';

/// Divides two numbers. Equivalent to [x] / [x].
final divide = curryN(2, (num x, num y) => x / y);
