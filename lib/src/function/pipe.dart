import '../internals/internals.dart' as _;
import 'call.dart';

/// Performs left-to-right function composition.
final dynamic pipe = _.VarArgsFunction((List fns) {
  if (fns.isEmpty) return pipe;

  return _.VarArgsFunction((List args) {
    return _.pipeWith(call, fns, args);
  });
});
