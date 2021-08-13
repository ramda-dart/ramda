import '_copyList.dart' as _;

/// Copys the list and swaps position of [idx1] & [idx2] then reutrns new list.
List swap(List list, int idx1, int idx2) {
  final res = _.copyList(list);
  final v = res[idx1];
  res[idx1] = res[idx2];
  res[idx2] = v;
  return res;
}
