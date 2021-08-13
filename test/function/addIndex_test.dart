import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/ramda.dart' as R;

void main() {
  final list = [1, 2, 3];
  test('Should add index to map.', () {
    final mapIndexed = R.addIndex(R.map);
    final res = mapIndexed((e, i) => '$i-$e', list);

    expect(res, equals(['0-1', '1-2', '2-3']));
  });

  test('Should add index to filter.', () {
    final onlyEvenIndex = R.addIndex(R.filter);
    final evenIndex = onlyEvenIndex((e, i) => i % 2 == 0, list);

    expect(evenIndex, equals([1, 3]));
  });
}
