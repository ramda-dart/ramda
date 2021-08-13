import 'package:flutter_test/flutter_test.dart';
import 'package:ramda/ramda.dart' as R;

void main() {
  final spec = {
    'sum1': R.add,
    'nested': {
      'sum2': R.add,
      'values': {'val': R.add(5)}
    }
  };

  final res = {
    'sum1': 3,
    'nested': {
      'sum2': 3,
      'values': {'val': 6}
    }
  };

  test('Should fill spec correct.', () {
    final fillable = R.applySpec(2, spec);
    expect(fillable(1, 2), equals(res));
  });
}
