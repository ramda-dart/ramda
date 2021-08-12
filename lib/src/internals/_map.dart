/// Maps [List<T>] into [List<R>]
///
/// Loops through [list] and passes [list[i]] into [fn]
/// Returns back a [List<R>] with results of fn.
List map(fn, List list) {
  final len = list.length;

  final List res = [];

  int i = -1;
  while (++i < len) {
    res.add(fn(list[i]));
  }

  return res;
}
