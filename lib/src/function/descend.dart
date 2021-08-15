import '../function/curryN.dart';
import 'ascend.dart';
import '../math/negate.dart';

final descend = curryN(3, (selector, x, y) {
  final res = ascend(selector, x, y);
  return res == 0 ? 0 : negate(res);
});
