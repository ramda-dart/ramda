/// Reduces [List<T>] into [R]
///
/// Loops through [list] then passes [init] & [list[i]] to fn
/// then passes the result of first loop and [list[i + 1]] and so on.
dynamic reduce(fn, init, List list) {
  final len = list.length;

  dynamic res = init;

  int i = -1;
  while (++i < len) {
    res = fn(res, list[i]);
  }

  return res;
}
