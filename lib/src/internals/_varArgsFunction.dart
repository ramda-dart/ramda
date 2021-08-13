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

  static apply(fn, List a) {
    if (fn is Function) return Function.apply(fn, a);

    switch (a.length) {
      case 0: return fn();
      case 1: return fn(a[0]);
      case 2: return fn(a[0], a[1]);
      case 3: return fn(a[0], a[1], a[2]);
      case 4: return fn(a[0], a[1], a[2], a[3]);
      case 5: return fn(a[0], a[1], a[2], a[3], a[4]);
      case 6: return fn(a[0], a[1], a[2], a[3], a[4], a[5]);
      case 7: return fn(a[0], a[1], a[2], a[3], a[4], a[5], a[6]);
      case 8: return fn(a[0], a[1], a[2], a[3], a[4], a[5], a[6], a[7]);
      case 9: return fn(a[0], a[1], a[2], a[3], a[4], a[5], a[6], a[7], a[8]);
      case 10: return fn(a[0], a[1], a[2], a[3], a[4], a[5], a[6], a[7], a[8], a[9]);
      default: throw Exception('Length must be non-negative and lte 10.');
    }
  }
}
