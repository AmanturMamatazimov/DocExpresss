import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled/login.dart';
import 'package:untitled/profile/afto.dart';
import 'package:untitled/profile/my_profile.dart';
import 'package:untitled/profile/profile.dart';

class LogOut extends StatefulWidget {
  const LogOut({Key? key}) : super(key: key);

  @override
  State<LogOut> createState() => _LogOutState();
}

class _LogOutState extends State<LogOut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF7F6F6),
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('Мой профиль',
          style: TextStyle(
              fontSize: 16, color: Color(0xff444444), fontWeight: FontWeight.w600
          ),
        ),
      ),

      body: Center(
        child: Container(
          width: 345,
          height: 215,
          decoration: BoxDecoration(
            color: Color(0xffFFFFFF),
            borderRadius:  BorderRadius.circular(15),
          ),
          child:  Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Center(
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xffFFB951),
                      borderRadius:  BorderRadius.circular(20),
                    ),
                    child:Icon(Icons.person, color: Colors.white,),

                  ),
                ),
              ),
               SizedBox(height: 10,),
               Text('''Вы действительно хотите выйти?'''),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[

                  Material(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xffD9D9D9),
                    child: MaterialButton(
                      minWidth: 155,
                      height: 50,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('Назад',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold
                        ),
                      ),
                    ),

                  ),
                Material(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xffFFB951),
                child: MaterialButton(
                  minWidth: 155,
                  height: 50,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  child: Text('Выйти',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold
                    ),
                  ),
                ),

                )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
