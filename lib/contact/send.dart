import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Send extends StatefulWidget {
  const Send({Key? key}) : super(key: key);

  @override
  State<Send> createState() => _SendState();
}

class _SendState extends State<Send> {
  final passwordField = TextFormField(
    autofocus: false,
    textInputAction: TextInputAction.done,
    decoration: InputDecoration(
        label: Image(
          image: AssetImage('assets/image 34.png'),
        ),
        suffixIcon: IconButton(
          onPressed: () {},
          icon: Icon(FontAwesomeIcons.angleRight),
        ),
        border: InputBorder.none),
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text('Выберите способ оплаты',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              padding: EdgeInsets.only(left: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xFFEDEDEF),
              ),
              child: passwordField,
            ),
          )
        ],
      ),
    );
  }
}
