import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/ramda.dart' as R;

void main() {
  test('Should return empty value of the given type.', () {
    expect(R.empty([1]), equals([]));
    expect(R.empty({1}), equals(Set()));
    expect(R.empty({1: 1}), equals({}));
    expect(R.empty('asds'), '');

    expect(R.empty(1), null);
  });
}
