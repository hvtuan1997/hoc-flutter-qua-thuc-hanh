import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Bài 2 - TH 2", home: const LoginScreen());
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // khai bao bien nhan gia tri dau vao
  final TextEditingController _username_controller = TextEditingController();
  final TextEditingController _password_controller = TextEditingController();

  // ham kiem tra dang nhap
  void _login() {
    // lay du lieu tu man hinh
    final username = _username_controller.text;
    final password = _password_controller.text;

    // kiem tra thong tin dang nhap
    if (username == "admin" && password == "1234") {
      // thong bao thanh cong
      _showSnackBar("Đăng nhập thành công", Colors.green);
    } else {
      // thong bao that bai
      _showSnackBar("Đăng nhập thất bại", Colors.red);
    }
  }

  // ham hien thi thong tin bang SnackBar
  void _showSnackBar(String message, Color color) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: color,
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Màn hình đăng nhập"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // tao ra o nhap du lieu cho username
            TextField(
              controller: _username_controller,
              decoration: const InputDecoration(
                labelText: "Nhập vào tên đăng nhập:",
                hintText: "nhập dữ liệu",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 15),
            // tao ra o nhap du lieu cho password
            TextField(
              controller: _password_controller,
              decoration: const InputDecoration(
                labelText: "Nhập vào mật khẩu:",
                hintText: "nhập dữ liệu",
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            SizedBox(height: 25),
            // tao ra mot nut an
            ElevatedButton(
              onPressed: _login,
              child: const Text("Đăng nhập"),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
