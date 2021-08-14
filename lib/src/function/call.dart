import '../internals/internals.dart' as _;

/// Allows to call a function with args passed spreated max 10 args.
final dynamic call = _.VarArgsFunction((List arguments) {
  _.assertFunc(arguments.first);
  return _.VarArgsFunction.apply(arguments.first, arguments.sublist(1));
});
