import '_varArgsFunction.dart' as _;

/// Returns true if passed value is [Map] otherwise false.
bool isMap(maybeMap) => maybeMap is Map;

/// Returns true if passed value is [List] otherwise false.
bool isList(maybeList) => maybeList is List;

/// Returns true if passed value is [Set] otherwise false.
bool isSet(maybeSet) => maybeSet is Set;

/// Returns true if passed value is [int] otherwise false.
bool isInt(maybeInt) => maybeInt is int;

/// Returns true if passed value is [double.nan] otherwise false.
bool isNaN(maybeNaN) => maybeNaN.toString() == "NaN";

/// Returns true if passed value is [double] and not [double.nan]
/// otherwise false.
bool isDouble(maybeDouble) => maybeDouble is double && !isNaN(maybeDouble);

/// Returns true if passed value is [num] therwise false.
bool isNum(maybeNum) => maybeNum is num && !isNaN(maybeNum);

/// Returns true if passed value is [String] therwise false.
bool isString(maybeStr) => maybeStr is String;

/// Returns true if passed value is [bool] therwise false.
bool isBool(maybeBool) => maybeBool is bool;

/// Returns true if passed value is [Function] therwise false.
bool isFunc(maybeFn) => maybeFn is Function || maybeFn is _.VarArgsFunction;
