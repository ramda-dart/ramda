import '../internals/internals.dart' as _;

/// Performs left-to-right function composition.
final dynamic pipe = _.VarArgsFunction((List fns) {
  if (fns.isEmpty) return pipe;

  return _.VarArgsFunction((List args) {
    dynamic res = _.VarArgsFunction.apply(fns[0], args);

    int i = 0;
    while (++i < fns.length) {
      res = fns[i](res);
    }

    return res;
  });
});
