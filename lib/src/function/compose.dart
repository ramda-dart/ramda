import '../internals/internals.dart' as _;
import '../list/reverse.dart';

final dynamic compose = _.VarArgsFunction((List fns) {
  if (fns.isEmpty) return compose;

  return _.VarArgsFunction(_.pipe(reverse(fns)));
});
