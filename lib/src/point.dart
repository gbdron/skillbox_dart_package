import 'dart:math';

class Point {
  int x, y, z;

  Point(this.x, this.y, this.z);

  factory Point.getInitialPoint() {
    return Point(0, 0, 0);
  }

  factory Point.getUnitVector() {
    return Point(1, 1, 1);
  }

  double distanceTo(Point another) {
    return sqrt(
        pow(x - another.x, 2) + pow(y - another.y, 2) + pow(z - another.z, 2));
  }
}
