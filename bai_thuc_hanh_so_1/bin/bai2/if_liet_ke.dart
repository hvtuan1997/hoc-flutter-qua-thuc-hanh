void main() {
  double point = -5.6;

  if (point >= 0 && point <= 5) {
    print("Xep loai: Kem!");
  } else if (point > 5 && point <= 7) {
    print("Xep loai: Trung binh!");
  } else if (point > 7 && point <= 8.5) {
    print("Xep loai: Kha!");
  } else if (point > 8.5 && point <= 10) {
    print("Xep loai: Gioi!");
  } else {
    print("Diem nhap vao khong chinh xac!");
  }
}
