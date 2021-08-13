import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/ramda.dart' as R;

void main() {
  test('Should split correctly.', () {
    expect(R.aperture(2, [1]), []);
    expect(R.aperture(1, [1]), equals([[1]]));
    expect(R.aperture(1, [1, 2, 3]), [[1], [2], [3]]);
    expect(R.aperture(1, [1, 2, 3, 4]), [[1], [2], [3], [4]]);
    expect(R.aperture(2, [1, 2, 3, 4]), [[1, 2], [2, 3], [3, 4]]);
  });
}