import 'dart:io';
import 'dart:math';

void main() {
  // nhap du lieu
  stdout.write("Nhap vao ban kinh R: ");
  double R = double.parse(stdin.readLineSync()!);
  stdout.write("Nhap vao hoanh do cua tam O: ");
  double xO = double.parse(stdin.readLineSync()!);
  stdout.write("Nhap vao tung do cua tam O: ");
  double yO = double.parse(stdin.readLineSync()!);
  stdout.write("Nhap vao hoanh do cua diem A: ");
  double xA = double.parse(stdin.readLineSync()!);
  stdout.write("Nhap vao tung do cua diem A: ");
  double yA = double.parse(stdin.readLineSync()!);

  // tinh khoang giua diem A va tam O
  double distance = sqrt((xA - xO) * (xA - xO) + (yA - yO) * (yA - yO));

  // kiem tra vi tri tuong doi giua diem A va duong tron
  if (distance < R) {
    print("Diem A nam trong duong tron!");
  } else if (distance == R) {
    print("Diem A nam tren duong tron!");
  } else {
    print("Diem A nam ngoai duong tron!");
  }
}
