import '../internals/internals.dart' as _;

/// Performs left-to-right function composition.
final dynamic pipe = _.VarArgsFunction((List fns) {
  if (fns.isEmpty) return pipe;

  return _.VarArgsFunction(_.pipe(fns));
});
