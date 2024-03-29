import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/home/send.dart';
import 'package:untitled/screens/main_screen.dart';

class Calculus2 extends StatefulWidget {
  const Calculus2({Key? key}) : super(key: key);

  @override
  State<Calculus2> createState() => _Calculus2State();
}

class _Calculus2State extends State<Calculus2> {
  bool value = false;
  late int selectedRadio;

  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
  }

  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  final boxChek = Container(
    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
    decoration: BoxDecoration(
      color: Color(0xffEDEDEF),
      borderRadius: BorderRadius.circular(8)
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 270,
          child: Text(
              '''Коробка 35х35х5 см, до 2кг Маленькие предметы, документы, бижутерия, аксессуары'''),
        ),
        ButtonBar(
          buttonPadding: EdgeInsets.all(0),
          children: <Widget>[
            Radio(
              value: 1,
              groupValue: 0,
              activeColor: Colors.blue,
              onChanged: (val) {
                print('Radio$val');
              },
            ),
          ],
        ),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Отправить посылку',
          style: new TextStyle(color: Color(0xff444444), fontSize: 16),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Color(0xFF444444)),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
        child: Column(
          children: [
            boxChek,
            SizedBox(
              height: 10,
            ),
            boxChek,
            SizedBox(
              height: 10,
            ),
            boxChek,
            SizedBox(
              height: 10,
            ),
            boxChek,
            SizedBox(
              height: 10,
            ),
            boxChek,
            SizedBox(
              height: 10,
            ),
            boxChek,
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(15),
                color: Color(0xffFFB951),
                child: MaterialButton(
                  padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                  minWidth: MediaQuery.of(context).size.width,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Send()));
                  },
                  child: Text(
                    'Далее',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
