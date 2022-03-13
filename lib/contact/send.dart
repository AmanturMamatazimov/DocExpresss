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
label: Image (image:AssetImage('assets/image 34.png'),
),
      contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
      suffixIcon: IconButton(
        onPressed: () {},
        icon: Icon(FontAwesomeIcons.angleRight
        ),
      ),
      hintText: 'Mbank',
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
        borderRadius: BorderRadius.circular(15),
      ),
      filled: true,
      fillColor: Color(0xffEDEDEF),

    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white ,
        title: Padding(
          padding: const EdgeInsets.only(left: 64),
          child: Text('Отправить посылку',
            style: new TextStyle(color: Color(0xff444444)), ),
        ),
      ),
       body: Column(
         children: [
           Padding(
             padding: const EdgeInsets.all(15),
             child: Text('Выберите способ оплаты', style:
             TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
           ),

           Padding(
             padding: const EdgeInsets.all(10),
             child: passwordField,
           )
         ],
       ),
    );
  }
}
