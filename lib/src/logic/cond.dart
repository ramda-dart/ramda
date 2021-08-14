import '../function/curryN.dart';

final cond = curryN(2, (List<List> conds, v) {
  int i = -1;
  while (++i < conds.length) {
    final cond = conds[i];

    if (cond[0](v)) {
      return cond[1](v);
    }
  }

  return null;
});
