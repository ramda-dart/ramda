dynamic arity(n, fn) {
  switch (n) {
    case 0: return () => fn([]);
    case 1: return (a) => fn([a]);
    case 2: return (a, b) => fn([a, b]);
    case 3: return (a, b, c) => fn([a, b, c]);
    case 4: return (a, b, c, d) => fn([a, b, c, d]);
    case 5: return (a, b, c, d, e) => fn([a, b, c, d, e]);
    case 6: return (a, b, c, d, e, f) => fn([a, b, c, d, e, f]);
    case 7: return (a, b, c, d, e, f, g) => fn([a, b, c, d, e, f, g]);
    case 8: return (a, b, c, d, e, f, g, h) => fn([a, b, c, d, e, f, g, h]);
    case 9: return (a, b, c, d, e, f, g, h, i) => fn([a, b, c, d, e, f, g, h, i]);
    case 10: return (a, b, c, d, e, f, g, h, i, j) => fn([a, b, c, d, e, f, g, h, i, j]);
    default: throw Exception('Length must be non-negative and lte 10.');
  }
}