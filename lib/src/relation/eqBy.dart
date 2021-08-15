import '../function/curryN.dart';

final eqBy = curryN(3, (fn, v1, v2) {
  return fn(v1) == fn(v2);
});
