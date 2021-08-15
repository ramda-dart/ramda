import '../function/curryN.dart';
import '../internals/internals.dart' as _;

final dropLast = curryN(2, (length, obj) {
  final len = obj.length;
  final gte = len <= length;

  if (_.isList(obj)) {
    return gte ? [] : obj.sublist(0, len - length);
  }

  if (_.assertString(obj)) {
    return gte ? '' : obj.substring(0, len - length);
  }
});
