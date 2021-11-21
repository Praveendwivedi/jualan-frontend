import 'package:flutter/material.dart';
import 'package:jualan/marketplace.dart';
import 'verifying_scr.dart';
import 'verified_scr.dart';

class ChooseMarket extends StatelessWidget {
  const ChooseMarket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarTextStyle: TextStyle(color: Colors.black),
        foregroundColor: Colors.black,
        title: const Text(
          'Pendaftaran',
        ),
        backgroundColor: Colors.white,
      ),
      body: const ChooseMarketForm(),
    );
  }
}

class ChooseMarketForm extends StatefulWidget {
  const ChooseMarketForm({Key? key}) : super(key: key);

  @override
  _PersonalDetailFormState createState() => _PersonalDetailFormState();
}

class _PersonalDetailFormState extends State<ChooseMarketForm> {
  // final _formKey = GlobalKey<FormState>();
  List<Marketplace> mps = [
    Marketplace("Tokopedia", false),
    Marketplace("Shopee", false),
    Marketplace("Goshop", false),
    Marketplace("GrabMart", false),
    Marketplace("Blibli", false),
    Marketplace("Bukalapak", false),
  ];
  // ignore: deprecated_member_use, prefer_collection_literals
  List<Marketplace> selectedMp = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 120),
                child: Text(
                  'Pilih marketplace di mana kamu mau jualan online',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: mps.length,
                    itemBuilder: (BuildContext context, int index) {
                      return mpItem(
                          mps[index].mp, mps[index].isSelected, index);
                    }),
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
                          MaterialPageRoute(builder: (_) => Verifying()));
                    },
                    child: const Text(
                      'Verifikasi',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget mpItem(String mp, bool isSelected, int index) {
    return ListTile(
      leading: isSelected
          ? Icon(
              Icons.check_box_rounded,
              color: Color(0xffffba01),
              size: 30,
            )
          : Icon(
              Icons.check_box_outline_blank,
              color: Color(0xffffba01),
              size: 30,
            ),
      title: Text(
        mp,
        style: TextStyle(color: Colors.black, fontSize: 20),
      ),
      onTap: () {
        setState(() {
          mps[index].isSelected = !mps[index].isSelected;
          // if(mps[index].isSelected==true){

          // }
        });
      },
    );
  }
}
//       body: Form(
//         child: Column(
//           children: [
//             const SizedBox(height: 60),
//             const Padding(
//               padding: EdgeInsets.only(top: 120, bottom: 20),
//               child: Center(
//                 child: Text(
//                   'Pilih marketplace di mana kamu mau jualan online',
//                   style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
//                 ),
//               ),
//             ),
//             Container(
//               width: 10,
//               height: 55,
//               child: ListView.builder(
//                   itemCount: MP.length,
//                   itemBuilder: (BuildContext context, int index) {
//                     return mpItem(MP[index].mp, MP[index].isSelected, index);
//                   }),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget mpItem(String mp, bool isSelected, int index) {
//     return ListTile(
//         leading: CircleAvatar(
//           backgroundColor: Colors.green,
//           child: Icon(
//             Icons.person_outline_outlined,
//             color: Colors.white,
//           ),
//         ),
//         title: Text(
//           mp,
//           style: TextStyle(color: Colors.black, fontSize: 10),
//         ),
//         trailing: isSelected
//             ? Icon(
//                 Icons.check_circle,
//                 color: Colors.green,
//               )
//             : Icon(
//                 Icons.check_circle,
//                 color: Colors.grey,
//               ));
//   }
// }
