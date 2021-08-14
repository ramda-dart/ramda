import '../function/curryN.dart';

/// Divides the first parameter by the second and returns the remainder.
///
/// For some reason `%` operator returns positive values only in dart.
final modulo = curryN(2, (num x, num y) => x % y);
