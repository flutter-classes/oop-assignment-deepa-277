import 'dart:math';

class Circle {
  static const pi = 3.14;
  double radius;
  Circle({required this.radius});
  perimeter() {
    var perim = 2 * pi * radius;
    print("Perimeter of circle is $perim");
    return;
  }

  area() {
    var area = pi * pow(radius, 2);
    print("Area of circle is $area");
    return;
  }
}

main() {
  var circle = Circle(radius: 5);
  circle.perimeter();
  circle.area();
}
