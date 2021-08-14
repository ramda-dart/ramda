import '_reduce.dart';
import '../function/apply.dart';

dynamic pipeWith(dynamic fn, List fns, List args) {
  return reduce(
    (res, f) => [fn(apply(f), res)],
    args,
    fns,
  ).first;
}
