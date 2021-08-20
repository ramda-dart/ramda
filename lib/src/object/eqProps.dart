import '../function/curryN.dart';
import 'prop.dart';

final eqProps = curryN(3, (k, o1, o2) {
  return prop(k, o1) == prop(k, o2);
});
