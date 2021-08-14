import '../function/curryN.dart';

final reverse = curryN(1, (List list) => list.reversed.toList());
