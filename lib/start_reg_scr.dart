import 'package:flutter/material.dart';
import 'contact_detail.dart';

class StartReg extends StatelessWidget {
  const StartReg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(top: 210.0, left: 30),
              child: Center(
                child: Text(
                  'Mulai jualan online dengan mudah!',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20, left: 30),
              child: Center(
                child: Text(
                  'Persiapkan dokumen - dokumen pendaftaran sebelum memulai:',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 0),
              child: RichText(
                  text: TextSpan(children: [
                WidgetSpan(
                    child: Icon(
                  Icons.check_circle_outlined,
                  color: Colors.black,
                )),
                TextSpan(
                    text: 'Detail Pengusaha',
                    style: TextStyle(color: Colors.black)),
              ])),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 0),
              child: RichText(
                  textAlign: TextAlign.right,
                  text: TextSpan(children: [
                    WidgetSpan(
                        child: Icon(
                      Icons.check_circle_outlined,
                      color: Colors.black,
                    )),
                    TextSpan(
                        text: 'Detail Bisnis',
                        style: TextStyle(color: Colors.black)),
                  ])),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 0),
              child: RichText(
                  text: TextSpan(children: [
                WidgetSpan(
                    child: Icon(
                  Icons.check_circle_outlined,
                  color: Colors.black,
                )),
                TextSpan(
                    text: 'Tanda Pengenal (KTP)',
                    style: TextStyle(color: Colors.black)),
              ])),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 0),
              child: RichText(
                  text: TextSpan(children: [
                WidgetSpan(
                    child: Icon(
                  Icons.check_circle_outlined,
                  color: Colors.black,
                )),
                TextSpan(
                    text: 'Email & Nomor Telefon',
                    style: TextStyle(color: Colors.black)),
              ])),
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
                        MaterialPageRoute(builder: (_) => ContactDetail()));
                  },
                  child: const Text(
                    'Mulai pendaftaran',
                    style: TextStyle(color: Colors.black, fontSize: 18),
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
