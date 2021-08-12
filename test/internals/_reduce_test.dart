import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/src/internals/internals.dart' as _;

void main() {
  group('_.reduce', () {
    const list = [1, 2, 3, 4];

    test('Should reduce list into int.', () {
      final res = _.reduce((t, v) => t + v, 0, list);

      expect(res, 10);
      expect(res is int, true);
    });

    test('Should reduce list into double.', () {
      final res = _.reduce((t, v) => t + v, 0.0, list);

      expect(res, 10.0);
      expect(res is double, true);
    });

    test('Should reverse string.', () {
      final str = 'cat'.split('');
      final res = _.reduce((x, y) => y + x, '', str);

      expect(res, 'tac');
    });
  });
}
