import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/ramda.dart' as R;

void main() {
  test('Should return true if at least one matches.', () {
    final f = R.anyPass(R.P, {'a': 0, 'b': 1});
    final aIs0 = R.propEq('a', 0);
    final bIs1 = R.propEq('b', 1);
    final cIs2 = R.propEq('c', 2);

    expect(f([aIs0]), true);
    expect(f([bIs1]), true);
    expect(f([cIs2]), false);
  });
}
