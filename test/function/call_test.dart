import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/ramda.dart' as R;

void main() {
  test('Should call the function with right args.', () {
    expect(R.call(2, R.add)(1, 2), 3);
    expect(R.call(2, R.add)(1)(2), 3);
  });
}
