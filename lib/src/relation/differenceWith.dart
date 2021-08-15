import '../function/curryN.dart';
import '../internals/internals.dart' as _;

final differenceWith = curryN(3, (cmp, List l1, List l2) {
  _.assertFunc(cmp);

  if (l1.isEmpty || l2.isEmpty) return l1;

  final List res = [];
  int i = -1;
  while (++i < l1.length) {
    int j = -1;
    bool shouldBeAdded = true;
    while (++j < l2.length) {
      if (cmp(l1[i], l2[j])) {
        shouldBeAdded = false;
        break;
      }
    }

    if (shouldBeAdded) {
      res.add(l1[i]);
    }
  }
  return res;
});
