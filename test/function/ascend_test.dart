import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/ramda.dart' as R;

void main() {
  final u1 = {'age': 20};
  final u2 = {'age': 20};
  final u3 = {'age': 30};
  final byAge = R.ascend(R.prop('age'));

  test('equals gives 0. lt gives -1, gt gives 1.', () {
    expect(byAge(u1, u2), 0);
    expect(byAge(u1, u3), -1);
    expect(byAge(u3, u1), 1);
  });
}
