import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/src/internals/internals.dart' as _;

void main() {
  final Map m = {};
  final Set s = {};
  final List l = [];
  final int i = 0;
  final double d = 0.0;
  final str = 'hello';

  bool wrapVoid(fn, obj) {
    try {
      fn(obj);
      return true;
    } catch (e) {
      return false;
    }
  }

  test('assertMap', () {
    expect(wrapVoid(_.assertMap, m), true);
    expect(() => _.assertMap(l), throwsAssertionError);
    expect(() => _.assertMap(s), throwsAssertionError);
    expect(() => _.assertMap(i), throwsAssertionError);
    expect(() => _.assertMap(d), throwsAssertionError);
    expect(() => _.assertMap(str), throwsAssertionError);
  });

  test('assertList', () {
    expect(wrapVoid(_.assertList, l), true);
    expect(() => _.assertList(m), throwsAssertionError);
    expect(() => _.assertList(s), throwsAssertionError);
    expect(() => _.assertList(i), throwsAssertionError);
    expect(() => _.assertList(d), throwsAssertionError);
    expect(() => _.assertList(str), throwsAssertionError);
  });

  test('assertSet', () {
    expect(wrapVoid(_.assertSet, s), true);
    expect(() => _.assertSet(m), throwsAssertionError);
    expect(() => _.assertSet(l), throwsAssertionError);
    expect(() => _.assertSet(i), throwsAssertionError);
    expect(() => _.assertSet(d), throwsAssertionError);
    expect(() => _.assertSet(str), throwsAssertionError);
  });

  test('assertInt', () {
    expect(wrapVoid(_.assertInt, i), true);
    expect(() => _.assertInt(m), throwsAssertionError);
    expect(() => _.assertInt(l), throwsAssertionError);
    expect(() => _.assertInt(s), throwsAssertionError);
    expect(() => _.assertInt(d), throwsAssertionError);
    expect(() => _.assertInt(str), throwsAssertionError);
  });

  test('assertDouble', () {
    expect(wrapVoid(_.assertDouble, d), true);
    expect(() => _.assertDouble(m), throwsAssertionError);
    expect(() => _.assertDouble(l), throwsAssertionError);
    expect(() => _.assertDouble(s), throwsAssertionError);
    expect(() => _.assertDouble(i), throwsAssertionError);
    expect(() => _.assertDouble(str), throwsAssertionError);
  });

  test('assertString', () {
    expect(wrapVoid(_.assertString, str), true);
    expect(() => _.assertString(m), throwsAssertionError);
    expect(() => _.assertString(l), throwsAssertionError);
    expect(() => _.assertString(s), throwsAssertionError);
    expect(() => _.assertString(i), throwsAssertionError);
    expect(() => _.assertString(d), throwsAssertionError);
  });
}
