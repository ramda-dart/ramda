import '../function/curryN.dart';
import '../internals/internals.dart' as _;

final equals = curryN(2, _.equals);
