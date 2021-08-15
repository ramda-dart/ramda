import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/ramda.dart' as R;

void main() {
  test('Should pass evluated args.', () {
    final average = R.converge(R.divide, [R.sum, R.length]);
    expect(average([1, 2, 3]), 2);

    final strangeConcat = R.converge(R.concat, [R.toUpper, R.identity]);
    expect(strangeConcat('test'), 'TESTtest');
  });
}
