import '../function/curryN.dart';
import 'sum.dart';

/// Returns the mean of the given list of numbers.
final mean = curryN(1, (List list) {
  if (list.length == 0) return double.nan;

  return sum(list) / list.length;
});
