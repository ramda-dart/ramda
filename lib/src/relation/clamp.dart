import '../function/curryN.dart';
import 'lt.dart';
import 'gt.dart';

final clamp = curryN(3, (min, max, value) {
  if (min > max)
    throw Exception(
      'min must not be greater than max in clamp(min, max, value)',
    );

  return lt(value, min)
      ? min
      : gt(value, max)
          ? max
          : value;
});
