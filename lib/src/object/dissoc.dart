import '../function/curryN.dart';
import 'dissocPath.dart';

final dissoc = curryN(2, (key, obj) => dissocPath([key], obj));
