import '../function/curryN.dart';
import '../internals/internals.dart' as _;

/// Calculates mathMod for [x] and [y].
///
/// mathMod behaves like the modulo operator should mathematically,
/// unlike the % operator (and by extension, R.modulo).
/// So while -17 % 5 is -2, mathMod(-17, 5) is 3.
/// mathMod requires Integer arguments, and
/// returns NaN when the modulus is zero or negative.
final mathMod = curryN(2, (num x, num y) {
  if (!_.isInt(x) || !_.isInt(y) || y < 1) return double.nan;
  return ((x % y) + y) % y;
});
