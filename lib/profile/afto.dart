import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled/login.dart';

class Afto extends StatefulWidget {
  const Afto({Key? key}) : super(key: key);

  @override
  State<Afto> createState() => _AftoState();
}

class _AftoState extends State<Afto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar:  AppBar(

        title: Padding(
          padding: const EdgeInsets.only(left: 64),
          child: Text('Мой профиль',
            style: new TextStyle(color: Color(0xff444444)), ),
        ),
        backgroundColor: Colors.white,
        leading: Container(
          width: 55,
          height: 22,
          child: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Image.asset('assets/doc.png'),
          ),
        ),
      ),
      body: Container(
        color: Color(0xffE5E5E5),
        child: Column(
          children: [
            SizedBox(height: 20,),
            Container(
              width: 400,
              height: 121,
              color: Colors.white,
              child: Column(
                children:<Widget> [
                  SizedBox(height: 20,),
                  Text('Вы не авторизованы'),
                  SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(15),
              color: Color(0xffFFB951),
              child: MaterialButton(
                padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                minWidth: MediaQuery.of(context).size.width,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                child: Text('Войти',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold
                  ),
                ),
              ),

            ),
          ),

                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              width: 400,
              height: 300,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.credit_card,color: Color(0xffFFB951),),
                        Text('О приложении' ,style: TextStyle(fontSize: 18),),
                        Icon(FontAwesomeIcons.angleRight ,)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.credit_card,color: Color(0xffFFB951),),
                        Text('Вопросы и ответы',style: TextStyle(fontSize: 18),),
                        Icon(FontAwesomeIcons.angleRight )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.credit_card,color: Color(0xffFFB951),),
                        Text('Политика возврата денег',style: TextStyle(fontSize: 18),),
                        Icon(FontAwesomeIcons.angleRight )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.credit_card,color: Color(0xffFFB951),),
                        Text('Политика конфиденциальности',style: TextStyle(fontSize: 18),),
                        Icon(FontAwesomeIcons.angleRight )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
