import '../function/curryN.dart';
import 'dropLast.dart';

final dropLastWhile = curryN(2, (fn, obj) {
  int len = 0;
  int i = obj.length;
  while (--i >= 0) {
    if (!fn(obj[i])) break;
    len++;
  }

  return len == 0 ? obj : dropLast(len, obj);
});
