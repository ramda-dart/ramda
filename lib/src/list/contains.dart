import '../function/curryN.dart';
import '../internals/internals.dart' as _;

final contains = curryN(2, (v, List list) {
  int i = -1;
  while (++i < list.length) {
    if (_.equals(v, list[i])) {
      return true;
    }
  }

  return false;
});
