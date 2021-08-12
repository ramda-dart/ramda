import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/src/internals/internals.dart' as _;

void main() {
  group('_.map', () {
    const List list = [
      {'v': 1},
      {'v': 2},
      {'v': 3},
    ];
    test('Should double the value of list items.', () {
      final res = _.map((e) => {'v': e['v']! * 2}, list);

      expect(
          res,
          equals([
            {'v': 2},
            {'v': 4},
            {'v': 6}
          ]));
    });

    test('Should extract v from list.', () {
      final res = _.map((e) => e['v']!, list);

      expect(res, equals([1, 2, 3]));
    });
  });
}
