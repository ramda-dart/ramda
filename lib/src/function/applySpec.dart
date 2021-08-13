import '../function/curryN.dart';
import '../internals/internals.dart' as _;
import 'apply.dart';

/// Fills an object with a given spec.
///
/// Given a spec object recursively mapping properties to functions,
/// creates a function producing an object of the same structure,
/// by mapping each property to the result of calling its associated
/// function with the supplied arguments.
final applySpec = curryN(2, (int n, Map spec) {
  return curryN(
    n,
    _.arity(n, (List args) {
      dynamic next(Map res, Map obj) {
        final keys = obj.keys;

        int i = -1;
        while (++i < keys.length) {
          final k = keys.elementAt(i);

          if (_.isFunc(obj[k])) {
            res[k] = apply(obj[k], args);
            continue;
          }

          res[k] = {};
          next(res[k], obj[k]);
        }

        return res;
      }

      return next({}, spec);
    }),
  );
});
