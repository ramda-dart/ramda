import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/ramda.dart' as R;

void main() {
  final list = [1, 2];

  test('Should append item at the end of list.', () {
    expect(R.append(3, list), equals([1, 2, 3]));
    expect(R.append('3', list), equals([1, 2, '3']));
  });
}
