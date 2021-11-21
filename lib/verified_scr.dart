import 'package:flutter/material.dart';
import 'dart:async';

class Verified extends StatelessWidget {
  const Verified({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.only(top: 300),
                child: Icon(
                  Icons.check_circle_outline,
                  size: 200,
                  color: Color(0xffffba01),
                )),
            Padding(
              padding: EdgeInsets.only(top: 2, left: 20),
              child: Text(
                'Verifikasi berhasil! Akun Jualan-mu sudah aktif',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
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
                    // Navigator.push(
                    //     context, MaterialPageRoute(builder: (_) => StartReg()));
                  },
                  child: const Text(
                    'Mulai jualan',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
