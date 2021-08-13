import '../function/curryN.dart';

/// Subtracts its second argument from its first argument.
final subtract = curryN(2, (num x, num y) => x - y);
