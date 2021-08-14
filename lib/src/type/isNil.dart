import '../function/curryN.dart';
import '../internals/internals.dart' as _;

final isNil = curryN(1, _.isNil);
