import '../function/curryN.dart';

/// Returns the value of [f1(v)] `&&` [f2(v)].
final both = curryN(3, (f1, f2, v) {
  return f1(v) && f2(v);
});
