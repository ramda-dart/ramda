import '../function/curryN.dart';

/// A function that does nothing but return the parameter supplied to it.
///
/// Good as a default or placeholder function.
final identity = curryN(1, (x) => x);
