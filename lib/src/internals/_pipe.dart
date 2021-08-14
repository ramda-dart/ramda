import '_varArgsFunction.dart' as _;

dynamic pipe(List fns) {
  dynamic next(List args) {
    dynamic res = _.VarArgsFunction.apply(fns[0], args);

    int i = 0;
    while (++i < fns.length) {
      res = fns[i](res);
    }

    return res;
  }

  return next;
}
