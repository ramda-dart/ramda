import '../function/curryN.dart';

final aperture = curryN(2, (int n, List list) {
  int len = list.length;

  if (n > len) return [];
  if (n == len) return [list];

  len -= n - 1;
  final res = [];

  int i = -1;
  while (++i < len) {
    res.add(list.sublist(i, i + n));
  }

  return res;
});
