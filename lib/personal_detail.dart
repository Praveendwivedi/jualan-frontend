import 'package:flutter/material.dart';
import 'business_detail.dart';

class PersonalDetail extends StatelessWidget {
  const PersonalDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarTextStyle: TextStyle(color: Colors.black),
        foregroundColor: Colors.black,
        title: Text(
          'Pendaftaran',
        ),
        backgroundColor: Colors.white,
      ),
      body: const PersonalDetailForm(),
    );
  }
}

class PersonalDetailForm extends StatefulWidget {
  const PersonalDetailForm({Key? key}) : super(key: key);

  @override
  _PersonalDetailFormState createState() => _PersonalDetailFormState();
}

class _PersonalDetailFormState extends State<PersonalDetailForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 120),
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Nomor Tanda Pengenal (KTP)',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Tanggal Lahir',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Alamat sesuai KTP',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Nomor Telefon Pribadi',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
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
                      MaterialPageRoute(builder: (_) => BusinessDetail()));
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
    );
  }
}
