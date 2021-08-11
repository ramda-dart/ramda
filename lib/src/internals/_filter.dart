/// Filter [List<T>] into [List<T>]
///
/// Loops through [list] and passes [list[i]] into [predicate]
/// if the [predicate] returns `true` then the [list[i]] included
/// in the new `list` otherwise [list[i]] removed.
List<T> filter<T>(bool Function(T) predicate, List<T> list) {
  final len = list.length;

  final List<T> res = [];

  int i = -1;
  while (++i < len) {
    if (predicate(list[i])) {
      res.add(list[i]);
    }
  }

  return res;
}
