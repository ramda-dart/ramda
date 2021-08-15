import '../function/curryN.dart';
import '../internals/internals.dart' as _;
import 'dart:math' as math;

final floor = curryN(1, (num n) => n.floor());
final ceil = curryN(1, (num n) => n.ceil());
final round = curryN(1, (num n) => n.round());
final abs = curryN(1, (num n) => n.abs());
final toInt = curryN(1, (num n) => n.toInt());
final toDouble = curryN(1, (num n) => n.toDouble());
final isNaN = curryN(1, (num n) => n.isNaN);
final pow = curryN(2, math.pow);

final dynamic min = _.VarArgsFunction((List nums) {
  if (nums.isEmpty) return double.nan;

  num min = double.infinity;
  int i = -1;
  while (++i < nums.length) {
    if (min > nums[i]) {
      min = nums[i];
    }
  }
  return min;
});

final max = _.VarArgsFunction((List nums) {
  if (nums.isEmpty) return double.nan;

  num max = double.negativeInfinity;
  int i = -1;
  while (++i < nums.length) {
    if (nums[i] > max) {
      max = nums[i];
    }
  }
  return max;
});
