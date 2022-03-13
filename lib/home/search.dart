import 'package:flutter/material.dart';
import 'package:untitled/home/search2.dart';
import 'package:untitled/screens/main_screen.dart';


class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}
final TextEditingController phoneController = new TextEditingController();
class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {

    final phoneField = TextFormField(
      autofocus: false,
      controller: phoneController,
      keyboardType: TextInputType.emailAddress,
      onSaved: (value)
      {
        phoneController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: 'Введите трек номер',
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(15),
          ),
          filled: true,
          fillColor: Color(0xffEDEDEF)
      ),
    );


    final loginButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(15),
      color: Color(0xffFFB951),
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => Search2()));
        },
        child: Text('Отследить',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold
          ),
        ),
      ),

    );
    return Scaffold(
      appBar: AppBar(

        title: Padding(
          padding: const EdgeInsets.only(left: 43),
          child: Text('Отследить посылку',
            style: new TextStyle(color: Color(0xff444444)), ),
        ),
        backgroundColor: Colors.white,
        leading: Container(
          width: 55,
          height: 22,
          child: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Image.asset('assets/doc.jpg'),
          ),),),
    body: Padding(
      padding: const EdgeInsets.only(left: 10, top: 25,right: 10 ),
      child: Column(
        children: <Widget>[
          Text(
  '''
   Lorem ipsum dolor sit amet, consectetur adipiscing
   elit.Vestibulum phasellus cursus urna,donec mi 
   semper tellus.''', style: TextStyle(fontSize: 14),),
          SizedBox(height: 30),
          phoneField,
          SizedBox(height: 20),
          loginButton
        ],
      ),
    ),
    );

  }
}
