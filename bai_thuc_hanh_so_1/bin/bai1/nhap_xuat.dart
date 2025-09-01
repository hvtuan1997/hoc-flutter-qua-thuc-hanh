import 'dart:io';

void main() {
  // stdout.write("Moi ban nhap vao ten: ");
  // String? ten = stdin.readLineSync();

  stdout.write("Nhap vao tuoi cua ban: ");
  String? tuoi_goc = stdin.readLineSync();
  int? a;

  if (tuoi_goc != null && tuoi_goc.isNotEmpty) {
    a = int.parse(tuoi_goc);
  }
}
