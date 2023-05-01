// The Class 'Point' is define as foloows:
// class Point{
//   int _x,_y;
//   Point(this._x,this._y);
//   void move(int mx,int my){
//     _x +=mx;
//     _y +=my;
//   }
//   void display(){
//     print('x=$_x y=$_y');
//   }
// }
// 1. Define a new class "PointCol" to manipulate colored points.
//  This class is a derived from Point.
// 2. Its constructor initialized the color of the object with a given integer (the color reference).
// 3. Add a method "pointColor" that print the color.
// 4. Create a small test program (main)

import 'dart:math';

class PointCol extends Point {
  int color;

  PointCol(int x, int y, this.color) : super(x, y);

  void pointColor() {
    print('Color: $color');
  }

  void display() {}

  void move(int i, int j) {}
}

void main() {
  void main() {
    PointCol p1 = PointCol(1, 2, 3);
    p1.display(); // Output: x=1 y=2
    p1.move(3, 4);
    p1.display(); // Output: x=4 y=6
    p1.pointColor(); // Output: Color: 3
  }
}
