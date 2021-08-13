import '../function/curryN.dart';

/// Return whatever passed as first arguments
///
/// Didn't check for whatever passed other than first arg [v]
/// returns it back when it called again.
final always = curryN(1, (v) {
  return curryN(0, () {
    return v;
  });
});
