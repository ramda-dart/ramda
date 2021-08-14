import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/ramda.dart' as R;

void main() {
  test('Should comparator with respect to x < y.', () {
    final byAge = R.comparator((a, b) => a['age'] < b['age']);
    final m1 = {'age': 70};
    final m2 = {'age': 78};

    expect(byAge(m1, m2), -1);
    expect(byAge(m2, m1), 1);
    expect(byAge(m1, m1), 0);
  });
}
