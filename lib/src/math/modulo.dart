import '../function/curryN.dart';

/// Divides the first parameter by the second and returns the remainder.
///
/// For some reason `%` operator returns positive values only in dart.
final modulo = curryN(2, (num x, num b) {
  final m = x > 0 ? 1 : -1;
  final a = x * m;

  return (a - (a / b).floor() * b) * m;
});
