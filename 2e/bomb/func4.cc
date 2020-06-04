#include <iostream>

int func4(int cx, int bx, int si) {
  int ax = si;
  ax -= bx;
  int dx = (unsigned)ax << 31;
  ax += dx;
  ax >>= 1;
  dx = ax + bx;
  if (dx <= cx) {
    ax = 0;
    if (dx != cx) {
      dx += 1;
      ax = func4(cx, dx, si);
      ax = 2 * ax + 1;
    }
  } else {
    dx -= 1;
    ax = func4(cx, bx, dx);
    ax = 2 * ax;
  }
  return ax;
}

int main() {
  int res = 0;
  for (int i = 0; i < 0xe; i++) {
    if (func4(i, 0, 0xe) == 3) {
      std::cout << i << "\n";
      break;
    }
  }
  return 0;
}