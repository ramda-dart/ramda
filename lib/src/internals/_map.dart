/// Maps [List<T>] into [List<R>]
///
/// Loops through [list] and passes [list[i]] into [fn]
/// Returns back a [List<R>] with results of fn.
List<R> map<T, R>(R Function(T) fn, List<T> list) {
  final len = list.length;

  final List<R> res = [];

  int i = -1;
  while (++i < len) {
    res.add(fn(list[i]));
  }

  return res;
}
