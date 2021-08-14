import '_guards.dart';

bool toBool(v) {
  return !(
      v == false                 ||
      isNil(v)                   ||
      (isString(v) && v.isEmpty) ||
      v == 0                     ||
      isNaN(v)
    );
}
