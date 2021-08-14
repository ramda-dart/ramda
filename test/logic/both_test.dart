import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/ramda.dart' as R;

void main() {
  test('Should return && result. ', () {
    final inRange = R.both(R.gt(R.P, 0), R.lt(R.P, 100));

    expect(inRange(5), true);
    expect(inRange(0), false);
    expect(inRange(100), false);
    expect(inRange(101), false);
    expect(inRange(-1), false);
  });
}
