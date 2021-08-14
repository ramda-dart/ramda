import 'nAry.dart';

/// Wraps a function of any arity (including nullary) in a function that
/// accepts exactly 2 parameter.
/// Any extraneous parameters will not be passed to the supplied function.
final unary = nAry(1);
