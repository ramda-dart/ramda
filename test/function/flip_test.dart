import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/ramda.dart' as R;

void main() {
  final a = R.flip(0, R.always(1));
  final b = R.flip(1, R.add(1));
  final c = R.flip(2, (x, y) => x / y);

  test('Should reverse first two args in args.length > 1.', () {
    expect(a(), 1);
    expect(b(1), 2);
    expect(c(2, 1), 0.5);
  });
}
