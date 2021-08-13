/// Assert if type doesn't match whatever needed
///
import '_guards.dart';

bool _throw(String type, obj) {
  throw AssertionError('Expected type `$type` but got ${obj.runtimeType}');
}

bool _assert(String type, fn, obj) {
  if (fn(obj)) return true;

  return _throw(type, obj);
}

bool assertMap(maybeMap) => _assert('Map', isMap, maybeMap);
bool assertList(maybeList) => _assert('List', isList, maybeList);
bool assertSet(maybeSet) => _assert('Set', isSet, maybeSet);
bool assertInt(maybeInt) => _assert('int', isInt, maybeInt);
bool assertDouble(maybeDouble) => _assert('double', isDouble, maybeDouble);
bool assertString(maybeString) => _assert('string', isString, maybeString);
bool assertNum(maybeNum) => _assert('num', isNum, maybeNum);
bool assertBool(maybeBool) => _assert('bool', isBool, maybeBool);
