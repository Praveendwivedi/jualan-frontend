import 'package:flutter/material.dart';
import 'dart:async';
import 'verified_scr.dart';

class Verifying extends StatelessWidget {
  const Verifying({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 5), () {
      // 5s over, navigate to a new page
      Navigator.push(context, MaterialPageRoute(builder: (_) => Verified()));
    });
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.only(top: 300),
                child: Icon(
                  Icons.timelapse_outlined,
                  size: 200,
                  color: Color(0xffffba01),
                )),
            Padding(
              padding: EdgeInsets.only(top: 2),
              child: Text(
                'Menunggu verifikasi...',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
