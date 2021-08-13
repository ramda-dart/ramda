/// Assert if type doesn't match whatever needed
///
import '_guards.dart';

void _throw(String type, obj) {
  throw AssertionError('Expected type `$type` but got ${obj.runtimeType}');
}

void _assert(String type, fn, obj) {
  if (fn(obj)) return;

  _throw(type, obj);
}

void assertMap(maybeMap) => _assert('Map', isMap, maybeMap);
void assertList(maybeList) => _assert('List', isList, maybeList);
void assertSet(maybeSet) => _assert('Set', isSet, maybeSet);
void assertInt(maybeInt) => _assert('int', isInt, maybeInt);
void assertDouble(maybeDouble) => _assert('double', isDouble, maybeDouble);
void assertString(maybeString) => _assert('string', isString, maybeString);
