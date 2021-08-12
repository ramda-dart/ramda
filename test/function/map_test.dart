import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/ramda.dart' as R;

void main() {
  final list = [1, 2, 3];

  test('Should double list of numbers.', () {
    final listx2 = R.map((e) => e * 2);

    expect(listx2(list), equals([2, 4, 6]));
  });

  test('Should turn list into list<Map>', () {
    final listOfMaps = R.map((e) => {'v': e});

    expect(
        listOfMaps(list),
        equals([
          {'v': 1},
          {'v': 2},
          {'v': 3}
        ]));
  });
}
