/// Filter [List<T>] into [List<T>]
///
/// Loops through [list] and passes [list[i]] into [predicate]
/// if the [predicate] returns `true` then the [list[i]] included
/// in the new `list` otherwise [list[i]] removed.
List filter(predicate, List list) {
  final len = list.length;

  final List res = [];

  int i = -1;
  while (++i < len) {
    if (predicate(list[i])) {
      res.add(list[i]);
    }
  }

  return res;
}
