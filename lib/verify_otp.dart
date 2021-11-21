import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'personal_detail.dart';

class VerifyOtp extends StatefulWidget {
  const VerifyOtp({Key? key}) : super(key: key);

  @override
  _VerifyOtpState createState() => _VerifyOtpState();
}

class _VerifyOtpState extends State<VerifyOtp> {
  FocusNode? pin2FocusNode;
  FocusNode? pin3FocusNode;
  FocusNode? pin4FocusNode;
  FocusNode? pin5FocusNode;

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
    pin5FocusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    pin2FocusNode!.dispose();
    pin3FocusNode!.dispose();
    pin4FocusNode!.dispose();
    pin5FocusNode!.dispose();
  }

  void nextField(String value, FocusNode? focusNode) {
    if (value.length == 1) {
      focusNode!.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          title: Text('Verifikasi'),
        ),
        body: Form(
          child: Column(
            children: [
              const SizedBox(height: 60),
              const Padding(
                padding: EdgeInsets.only(top: 120, bottom: 20),
                child: Center(
                  child: Text(
                    'Masukan Kode OTP',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 50,
                    child: TextFormField(
                      autofocus: true,
                      obscureText: true,
                      style: TextStyle(fontSize: 20),
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (value) {
                        nextField(value, pin2FocusNode);
                      },
                    ),
                  ),
                  SizedBox(
                    width: 50,
                    child: TextFormField(
                      focusNode: pin2FocusNode,
                      obscureText: true,
                      style: TextStyle(fontSize: 20),
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (value) => nextField(value, pin3FocusNode),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                    child: TextFormField(
                      focusNode: pin3FocusNode,
                      obscureText: true,
                      style: TextStyle(fontSize: 20),
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (value) => nextField(value, pin4FocusNode),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                    child: TextFormField(
                      focusNode: pin4FocusNode,
                      obscureText: true,
                      style: TextStyle(fontSize: 20),
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (value) => nextField(value, pin5FocusNode),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                    child: TextFormField(
                      focusNode: pin5FocusNode,
                      obscureText: true,
                      style: TextStyle(fontSize: 20),
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (value) {
                        if (value.length == 1) {
                          pin5FocusNode!.unfocus();

                          // Then you need to check is the code is correct or not
                        }
                      },
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: RichText(
                  textAlign: TextAlign.justify,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Tidak menerima kode OTP?',
                        style: TextStyle(color: Colors.black),
                      ),
                      WidgetSpan(
                          child: TextButton(
                        child: Text('Kirim ulang'),
                        onPressed: () {},
                      ))
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 65),
                child: Container(
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                      color: const Color(0xffffba01),
                      borderRadius: BorderRadius.circular(20)),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => PersonalDetail()));
                    },
                    child: const Text(
                      'Selanjutnya',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

// class VerifyOtp extends StatelessWidget {
//   const VerifyOtp({Key? key}) : super(key: key);
//   void nextField(String value, FocusNode? focusNode) {
//     if (value.length == 1) {
//       focusNode!.requestFocus();
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           foregroundColor: Colors.black,
//           backgroundColor: Colors.white,
//           title: Text('Verifikasi'),
//         ),
//         body: SingleChildScrollView(
//           child: Column(
//             children: <Widget>[
//               Padding(
//                 padding: EdgeInsets.only(top: 120),
//                 child: Center(
//                   child: Text(
//                     'Masukan Kode OTP',
//                     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                   ),
//                 ),
//               ),
//               Row(
//                 children: [
//                   SizedBox(
//                     width: 30,
//                     child: TextFormField(
//                       autofocus: true,
//                       obscureText: true,
//                       style: TextStyle(fontSize: 24),
//                       keyboardType: TextInputType.number,
//                       textAlign: TextAlign.center,
//                       onChanged: (value) => nextField(value, focusNode),
//                     ),
//                   )
//                 ],
//               )
//             ],
//           ),
//         ));
//   }
// }
