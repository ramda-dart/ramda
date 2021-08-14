import '_guards.dart';

bool equals(x, y) {
  if (x == y) return true;

  if (isList(x) && isList(y)) {
    if (x.length != y.length) return false;

    int i = -1;
    while (++i < x.length) {
      if (!equals(x[i], y[i])) {
        return false;
      }
    }

    return true;
  }

  if (isMap(x) && isMap(y)) {
    if (x.keys.length != y.keys.length) return false;

    for (final key in x.keys) {
      if (!y.containsKey(key) || !equals(x[key], y[key])) {
        return false;
      }
    }

    return true;
  }

  if (isSet(x) && isSet(y)) {
    if (x.length != y.length) return false;

    for (final value in x) {
      if (!y.contains(value)) {
        return false;
      }
    }

    return true;
  }

  if (isNaN(x) && isNaN(y)) return true;

  return false;
}
