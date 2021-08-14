import 'nAry.dart';

/// Wraps a function of any arity (including nullary) in a function that
/// accepts exactly 3 parameters.
/// Any extraneous parameters will not be passed to the supplied function.
final binary = nAry(2);
