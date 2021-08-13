import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/src/internals/internals.dart' as _;

void main() {
  final Map m = {};
  final Set s = {};
  final List l = [];
  final int i = 0;
  final double d = 0.0;
  final double nan = double.nan;
  final num ni = 1 ~/ 1;
  final num nd = 1.0;
  final str = 'hello';

  test('isMap', () {
    expect(_.isMap(m), true);
    expect(_.isMap(s), false);
    expect(_.isMap(l), false);
    expect(_.isMap(i), false);
    expect(_.isMap(d), false);
    expect(_.isMap(nan), false);
    expect(_.isMap(ni), false);
    expect(_.isMap(nd), false);
    expect(_.isMap(str), false);
  });

  test('isList', () {
    expect(_.isList(m), false);
    expect(_.isList(s), false);
    expect(_.isList(l), true);
    expect(_.isList(i), false);
    expect(_.isList(d), false);
    expect(_.isList(nan), false);
    expect(_.isList(ni), false);
    expect(_.isList(nd), false);
    expect(_.isList(str), false);
  });

  test('isSet', () {
    expect(_.isSet(m), false);
    expect(_.isSet(s), true);
    expect(_.isSet(l), false);
    expect(_.isSet(i), false);
    expect(_.isSet(d), false);
    expect(_.isSet(nan), false);
    expect(_.isSet(ni), false);
    expect(_.isSet(nd), false);
    expect(_.isSet(str), false);
  });

  test('isInt', () {
    expect(_.isInt(m), false);
    expect(_.isInt(s), false);
    expect(_.isInt(l), false);
    expect(_.isInt(i), true);
    expect(_.isInt(d), false);
    expect(_.isInt(nan), false);
    expect(_.isInt(ni), true);
    expect(_.isInt(nd), false);
    expect(_.isInt(str), false);
  });

  test('isNaN', () {
    expect(_.isNaN(m), false);
    expect(_.isNaN(s), false);
    expect(_.isNaN(l), false);
    expect(_.isNaN(i), false);
    expect(_.isNaN(d), false);
    expect(_.isNaN(nan), true);
    expect(_.isNaN(ni), false);
    expect(_.isNaN(nd), false);
    expect(_.isNaN(str), false);
  });

  test('isDouble', () {
    expect(_.isDouble(m), false);
    expect(_.isDouble(s), false);
    expect(_.isDouble(l), false);
    expect(_.isDouble(i), false);
    expect(_.isDouble(d), true);
    expect(_.isDouble(nan), false);
    expect(_.isDouble(ni), false);
    expect(_.isDouble(nd), true);
    expect(_.isDouble(str), false);
  });

  test('isNum', () {
    expect(_.isNum(m), false);
    expect(_.isNum(s), false);
    expect(_.isNum(l), false);
    expect(_.isNum(i), true);
    expect(_.isNum(d), true);
    expect(_.isNum(nan), false);
    expect(_.isNum(ni), true);
    expect(_.isNum(nd), true);
    expect(_.isNum(str), false);
  });

  test('isString', () {
    expect(_.isString(m), false);
    expect(_.isString(s), false);
    expect(_.isString(l), false);
    expect(_.isString(i), false);
    expect(_.isString(d), false);
    expect(_.isString(nan), false);
    expect(_.isString(ni), false);
    expect(_.isString(nd), false);
    expect(_.isString(str), true);
  });

  test('isBool', () {
    expect(_.isBool(false), true);
    expect(_.isBool(true), true);
    expect(_.isBool(m), false);
  });

  test('isFunc', () {
    expect(_.isFunc(() {}), true);
    expect(_.isFunc(_.VarArgsFunction((x) {})), true);
    expect(_.isFunc(false), false);
  });
}
