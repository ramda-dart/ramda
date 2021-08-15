import '../function/curryN.dart';
import 'drop.dart';

final dropWhile = curryN(2, (fn, obj) {
  int len = 0;
  for (final item in obj) {
    if (!fn(item)) break;
    len++;
  }

  return len == 0 ? obj : drop(len, obj);
});
