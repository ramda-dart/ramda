import '../internals/internals.dart' as _;
import 'p.dart';

/// Truns any function into its curried version
///
/// [curryN] takes a `length` indicates the length of required `positional args`
/// and takes a function `fn` which accepts there arguments.
/// allowing to pass these arguments in unorder way and provide flexability
/// to be used along with map, reduce, filter, etc.
///
/// ```dart
/// final foo = (a, b, c, d) => a + 3.2 * b + 2 * c + 4 * d;
/// final calc = R.curryN(4, foo);
/// expect(calc()(R.P, 2, 3)(R.P, 2)(1), foo(1, 2, 3, 2)); // works
/// ```
///
/// The ability of accepting any number of `positional args` provided by
/// [VarArgsFunction] in internals lib.
dynamic curryN(int length, Function fn) {
  dynamic _curryN(List args) {
    dynamic next;

    next = _.VarArgsFunction((List arguments) {
      final len = arguments.length;
      if (len == 0) return next;

      final _args = [...args];

      bool hasP = false;
      int i = -1;
      int j = 0;
      while (++i < length) {
        if (_args[i] != P) continue;

        if (j >= len || arguments[j] == P) {
          hasP = true;
          j++;
          continue;
        }

        _args[i] = arguments[j++];
      }

      return hasP ? _curryN(_args) : Function.apply(fn, _args);
    });

    return next;
  }

  return _curryN(List.filled(length, P));
}
