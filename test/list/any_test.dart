import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/ramda.dart' as R;

void main() {
  test('Should return true if at least one matches.', () {
    final l = R.any(R.P, [1, 2]);
    final lt = R.flip(2, R.lt);
    final lt0 = lt(0);
    final lt2 = lt(2);

    expect(l(lt0), false);
    expect(l(lt2), true);
  });
}
