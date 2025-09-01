import 'dart:io';
import 'dart:math';

void main() {
  // buoc 1: nhap canh a va canh b
  stdout.write("Nhap du lieu cho canh a: ");
  double a = double.parse(stdin.readLineSync()!);
  stdout.write("Nhap du lieu cho canh b: ");
  double b = double.parse(stdin.readLineSync()!);

  // buoc 2: tinh dien tich hinh chu nhat
  double rectangleArea = a * b;

  // buoc 3: tinh dien tich hinh tron
  double radius = a / 2;
  double circleArea = pi * radius * radius;

  // buoc 4: tinh dien tich phan gach cheo
  print("Dien tich cua phan gach cheo la: ${rectangleArea - circleArea}");
}