/// Provide a way to get unknown number of args
///
/// [VarArgsFunction] allow function to be called with unkown
/// number of positional arguments.
///
/// ```dart
/// final sum = (List args) => _.reduce((a, b) => a + b, args);
/// sum(1, 2, 3); // won't work
///
/// final dynamic varArgsSum = VarArgsFunction(sum);
/// varArgsSum(1, 2, 3); // works fine
/// ```
/// See also:
///   * [Invocation]
class VarArgsFunction {
  final Function(List) _onCall;
  const VarArgsFunction(this._onCall);

  noSuchMethod(Invocation invocation) {
    if (!invocation.isMethod || invocation.namedArguments.isNotEmpty) {
      super.noSuchMethod(invocation);
    }
    return _onCall(invocation.positionalArguments);
  }
}
