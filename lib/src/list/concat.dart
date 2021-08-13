import '../function/curryN.dart';
import '../internals/internals.dart' as _;

/// Returns the result of concatenating the given lists or strings.
final concat = curryN(2, (x, y) {
  if (_.isString(x) && _.assertString(y)) {
    return x + y;
  }

  if (_.isList(x) && _.assertList(y)) {
    return [...x, ...y];
  }

  throw TypeError();
});
