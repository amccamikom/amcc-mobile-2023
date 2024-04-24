import 'package:flutter/material.dart';
import 'package:libraryplus/theme.dart';
import 'homepage.dart';

class LoginPage extends StatefulWidget {
  // ignore: use_super_parameters
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _nimController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isErrorVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        children: [
          Container(
            margin: const EdgeInsets.only(top: 132, bottom: 80),
            child: Center(
              child: RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(text: 'Library', style: title1),
                    TextSpan(text: 'Plus', style: title2),
                  ],
                ),
              ),
            ),
          ),
          Text(
            'LOGIN',
            style: title1.copyWith(fontSize: 24),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 29),
          TextField(
            controller: _nimController,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
                borderSide: const BorderSide(color: Colors.white),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
                borderSide: BorderSide(color: textColor1),
              ),
              filled: true,
              fillColor: Colors.white,
              hintText: 'NIM',
              hintStyle: TextStyle(
                color: textColor1,
                fontStyle: FontStyle.italic,
                fontSize: 15,
              ),
            ),
          ),
          const SizedBox(height: 20),
          TextField(
            controller: _passwordController,
            obscureText: true,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
                borderSide: const BorderSide(color: Colors.white),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
                borderSide: BorderSide(color: textColor1),
              ),
              filled: true,
              fillColor: Colors.white,
              hintText: 'PASSWORD',
              hintStyle: TextStyle(
                color: textColor1,
                fontStyle: FontStyle.italic,
                fontSize: 15,
              ),
            ),
          ),
          const SizedBox(height: 10),
          if (_isErrorVisible)
            const Text(
              'NIM atau password Anda salah, coba lagi!',
              style: TextStyle(
                color: Colors.red,
                fontSize: 14,
              ),
              textAlign: TextAlign.center,
            ),
          const SizedBox(height: 65),
          ElevatedButton(
            onPressed: () {
              if (_nimController.text == '21122083' &&
                  _passwordController.text == '123') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const homepage()),
                );
              } else {
                setState(() {
                  _isErrorVisible = true;
                });
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: textColor1,
              minimumSize: const Size(256, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              ),
            ),
            child: Text(
              'MASUK',
              style: TextStyle(
                color: backgroundColor1,
                fontSize: 20,
                fontWeight: semiBold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
