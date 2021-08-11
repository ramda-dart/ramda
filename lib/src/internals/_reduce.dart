/// Reduces [List<T>] into [R]
///
/// Loops through [list] then passes [init] & [list[i]] to fn
/// then passes the result of first loop and [list[i + 1]] and so on.
R reduce<T, R>(R Function(R, T) fn, R init, List<T> list) {
  final len = list.length;

  R res = init;

  int i = -1;
  while (++i < len) {
    res = fn(res, list[i]);
  }

  return res;
}
