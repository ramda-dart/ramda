import '../function/curryN.dart';

/// Returns the result of applying the onSuccess function.
final andThen = curryN(2, (fn, Future future) {
  // passing fn directly to then will cause an error
  return future.then((e) => fn(e));
});
