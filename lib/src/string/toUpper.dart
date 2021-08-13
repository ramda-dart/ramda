import '../function/curryN.dart';

/// Returns the upper case version of a string.
final toUpper = curryN(1, (String str) {
  return str.toUpperCase();
});
