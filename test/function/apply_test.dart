import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/ramda.dart' as R;

void main() {
  test('Should call function with right args.', () {
    expect(R.apply(R.add, [1, 2]), 3);
    expect(R.apply(R.concat, ['a', ' b']), 'a b');
  });
}
