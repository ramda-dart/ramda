import '../function/curryN.dart';
import '../internals/internals.dart' as _;

final drop = curryN(2, (length, obj) {
  final gte = obj.length <= length;

  if (_.isList(obj)) {
    return gte ? [] : obj.sublist(length);
  }

  if (_.assertString(obj)) {
    return gte ? '' : obj.substring(length);
  }
});
