import '../function/curryN.dart';

/// Adding index to a function call
///
/// For example if u using map which passing the [list[i]] element and u
/// need to access index then the following code should do it
/// ```dart
/// final list = ['a', 'b'];
/// final mapIndexed = R.addIndex(R.map);
/// mapIndexed((e, i) => '$i-$e', list); // ['0-a', '1-b']
/// ```
final addIndex = curryN(3, (fnToIndex, fn, List list) {
  int i = 0;
  return fnToIndex((x) {
    return fn(x, i++);
  }, list);
});
