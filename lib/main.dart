import 'package:flutter/material.dart';
import 'start_reg_scr.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jualan',
      home: Login(),
    );
  }
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFBA01),
      body: SingleChildScrollView(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            // ignore: prefer_const_constructors
            Padding(
              padding: const EdgeInsets.only(top: 260.0),
              // ignore: prefer_const_constructors
              child: Center(
                // ignore: prefer_const_constructors
                child: RichText(
                    text: TextSpan(children: [
                  WidgetSpan(
                      child: Icon(
                    Icons.shopping_cart_outlined,
                    size: 50,
                  )),
                  TextSpan(
                    text: 'Jualan',
                    style: const TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  )
                ])), //Image.asset('assets/logo/LOGO.png'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: SizedBox(
                  width: 250,
                  height: 40,
                  child: Center(
                    child: Text(
                      'Mulai jualan online di berbagai \nmarketplace besar dalam satu aplikasi',
                      textAlign: TextAlign.center,
                    ),
                  )),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 65),
              child: Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    color: const Color(0xffd13956),
                    borderRadius: BorderRadius.circular(20)),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => StartReg()));
                  },
                  child: const Text(
                    'Mulai jualan online',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: <Widget>[
                  const Text('Sudah punya akun Jualan?'),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 1),
                    child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
                        // ignore: prefer_const_constructors
                        child: Text(
                          'login',
                          style: const TextStyle(color: Color(0xffd13956)),
                        )),
                  ),
                  const Text('Login di sini')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
