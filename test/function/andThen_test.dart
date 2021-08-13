import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/ramda.dart' as R;

void main() {
  test('Should inc returned value.', () async {
    final x2 = R.andThen(R.add(1));
    final f = x2(Future.value(1));

    expect(await f, 2);
  });
}
