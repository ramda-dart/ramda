import '../internals/internals.dart' as _;
import '../list/reverse.dart';
import 'call.dart';

final dynamic compose = _.VarArgsFunction((List fns) {
  if (fns.isEmpty) return compose;

  return _.VarArgsFunction((List args) {
    return _.pipeWith(call, reverse(fns), args);
  });
});
