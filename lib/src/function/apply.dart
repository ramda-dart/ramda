import '../function/curryN.dart';
import '../internals/internals.dart' as _;

/// Calling the function and padding list of `positionalArguments` to it.
final apply = curryN(2, _.VarArgsFunction.apply);
