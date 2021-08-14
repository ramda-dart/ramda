import '../function/curryN.dart';
import '../list/sort.dart';
import '../function/ascend.dart';
import '../function/identity.dart';

/// Returns the median of the given list of numbers.
final median = curryN(1, (List list) {
  if (list.isEmpty) return double.nan;

  final len = list.length;
  final _list = sort(ascend(identity), list);
  final m = (len / 2).floor();

  if (len % 2 == 1) return _list[m];

  return (_list[m - 1] + _list[m]) / 2;
});
