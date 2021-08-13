import '../function/curryN.dart';
import '../internals/internals.dart' as _;

/// Applay a list of [fns] to a list of values [v]
///
/// Add every returned value from [fns] to a list and returns it.
/// ```dart
/// R.ap([R.add(1), R.add(2)], [1]); // [2, 3]
///
/// Special case:
///   R.ap(R.concat, R.toUpper)('Ramda'); // 'RamdaRAMDA'
/// ```
final ap = curryN(2, (fns, v) {
  if (_.isList(fns) && _.assertList(v)) {
    final List res = [];

    int i = -1;
    while (++i < fns.length) {
      int j = -1;
      while (++j < v.length) {
        res.add(fns[i](v[j]));
      }
    }
    return res;
  }

  if (_.isFunc(fns) && _.assertFunc(v)) {
    return curryN(1, (String str) {
      return fns(str, v(str));
    });
  }

  throw TypeError();
});
