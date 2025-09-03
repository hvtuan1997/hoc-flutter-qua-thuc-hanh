import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Bai 1 - TH2", home: const CalculatorScreen());
  }
}

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  // tao 2 bien de luu tru gia tri tu 2 so nguyen
  final TextEditingController _number1_controller = TextEditingController();
  final TextEditingController _number2_controller = TextEditingController();

  // bien de luu tru ket qua
  String result = "";

  // ham tinh tong 2 so nguyen
  void _calculatorSum() {
    // lay du lieu tu 2 o nhap lieu
    final String numberText1 = _number1_controller.text;
    final String numberText2 = _number2_controller.text;

    // chuyen doi kieu du lieu
    final int? number1 = int.tryParse(numberText1);
    final int? number2 = int.tryParse(numberText2);

    // kiem tra lai xem viec chuyen doi co thanh cong hay khong
    if (number1 != null && number2 != null) {
      final int sum = number1 + number2;
      setState(() {
        result = "Kết quả: $sum";
      });
    } else {
      setState(() {
        result = "Hãy nhập giá trị số nguyên hợp lệ";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ứng dụng tính tổng hai số nguyên"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // o nhap so nguyen thu nhat
            TextFormField(
              controller: _number1_controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Nhập vào số nguyên thứ nhất:",
                hintText: "nhập dữ liệu",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 15),
            // o nhap so nguyen thu hai
            TextFormField(
              controller: _number2_controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Nhập vào số nguyên thứ hai:",
                hintText: "nhập dữ liệu",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 25),
            // tao nut an
            ElevatedButton(
              onPressed: _calculatorSum,
              child: const Text("Tính tổng"),
            ),
            SizedBox(height: 25),
            // hien thi ket qua
            Text(
              result,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
