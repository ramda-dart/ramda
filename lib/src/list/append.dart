import '../function/curryN.dart';
import '../internals/internals.dart' as _;

/// Returns a new list containing the contents of the given list,
/// followed by the given element.
final append = curryN(2, (item, List list) {
  final res = _.copyList(list);
  res.add(item);

  return res;
});
