import '../function/curryN.dart';
import '../internals/internals.dart' as _;

final defaultTo = curryN(2, (d, v) {
  if (_.isNil(v) || _.isNaN(v)) return d;

  return v;
});
