import '../function/curryN.dart';
import '../internals/internals.dart' as _;

final dissocPath = curryN(2, (List path, obj) {
  dynamic next(int i, source) {
    final dynamic src =
        _.isList(source) ? _.copyList(source) : _.copyMap(source);

    dynamic key = path[i];
    if (_.isList(src) && key is int && key < 0) {
      key += source.length;
    }

    if (i + 1 == path.length) {
      _.isList(src) ? src.removeAt(key) : src.remove(key);
      return src;
    }

    src[key] = next(i + 1, src[key]);

    return src;
  }

  return next(0, obj);
});
