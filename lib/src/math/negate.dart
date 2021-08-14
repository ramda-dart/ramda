import '../function/curryN.dart';

/// Negates its argument.
final negate = curryN(1, (num x) => -x);
