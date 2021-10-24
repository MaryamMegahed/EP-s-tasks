//import 'package:dart2/dart2.dart' as dart2;

//import 'dart:io';

import 'dart:math';

mixin Shape {
  getArea();
}

class Circle with Shape {
  var r;
  Circle(var r) {
    this.r = r;
  }
  @override
  getArea() {
    print(this.r * this.r * pi);
  }
}

class Rectangle with Shape {
  var x, y;
  Rectangle(var x, var y) {
    this.x = x;
    this.y = y;
  }
  @override
  getArea() {
    print(this.x * this.y);
  }
}

class Triangle with Shape {
  var l, s;
  Triangle(var l, var s) {
    this.l = l;
    this.s = s;
  }
  @override
  getArea() {
    print(this.l * this.s * 0.5);
  }
}

class Fill_Class extends Circle {
  var red;
  Fill_Class(var rad) : super(rad);

  pprint() {
    print("it is filled shape");
  }
}

class FilledCircle extends Fill_Class {
  var rad;
  FilledCircle(var rad) : super(rad);
  defineMe() {
    print("This is circle with area of");
    getArea();
    pprint();
  }
}

void main() {
  //var name = stdin.readLineSync();
  Circle c = Circle(5);
  c.getArea();
  print('*****************************');
  Rectangle r = Rectangle(5, 4);
  r.getArea();
  print('*****************************');
  Triangle t = Triangle(5, 4);
  t.getArea();
  print('*****************************');
  FilledCircle fc = FilledCircle(5);
  fc.defineMe();
}
