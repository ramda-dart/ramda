import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/ramda.dart' as R;

void main() {
  final x = R.always('x');
  test('Should return the registered value.', () {
    expect(x(), 'x');
    expect(x('xxx'), 'x');
    expect(x('q'), 'x');
    expect(x(null), 'x');
    expect(x(R.P), 'x');
  });
}
