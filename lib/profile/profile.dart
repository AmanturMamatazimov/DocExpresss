import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled/contact/contact.dart';
import 'package:untitled/login.dart';
import 'package:untitled/news/news.dart';
import 'package:untitled/profile/bonus.dart';
import 'package:untitled/profile/history.dart';
import 'package:untitled/profile/logOut.dart';
import 'package:untitled/profile/my_profile.dart';
import 'package:untitled/tarif/aboutapp.dart';
import 'package:untitled/tarif/guestion.dart';
import 'package:untitled/tarif/tarif.dart';


class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Padding(
          padding: const EdgeInsets.only(left: 43),
          child: Text('Мой профиль',
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

      body: SingleChildScrollView(
        child: Container(

          color: Color(0xffE5E5E5),
          child: Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: Column(
              children: [
                Container(
                  width: 3900,
                  height: 114,
                  color: Colors.white,
                  child: Row(
                    children: <Widget>[
                       Padding(
                         padding: const EdgeInsets.only(top: 23, left: 15, ),
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
                      Padding(
                        padding: const EdgeInsets.only(left: 34,top: 34),
                        child: Column(
                          children: [
                            Text('Дженалиев Азим',style: TextStyle(fontSize: 20),),
                            SizedBox(height: 5,),
                            Text('+99655910033'),
                            SizedBox(height: 3 ,),
                            Text('Кыргызстан, г.Бишкек'),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 23, left: 20),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => MyProfile()));
                          },
                          child: Container(
                            width: 71,
                            height: 25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(37),
                              color: Color(0xffbacEDEDEF,),
                            ),
                            child: Center(child: Text('Изменить')),

                          ),
                        ),
                      )
                    ],
                  ),
                ),
               SizedBox(height: 10,),
                Container(
                  width: 405,
                  height: 216,
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius:  BorderRadius.circular(10),
                  ),
                  child: Column(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          GestureDetector(

                              child: Padding(
                                padding: const EdgeInsets.only(left:10, right: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(Icons.credit_card,color: Color(0xffFFB951),),
                                    Text('Бонусная карта'),
                                    Icon(FontAwesomeIcons.angleRight )

                                  ],
                                ),
                              ),
                            onTap: (){
                                Navigator.push(context,
                                MaterialPageRoute(builder: (context) => Bonus()));
                              }
                          ),

                          GestureDetector(

                              child: Padding(
                                padding: const EdgeInsets.only(left:10, right: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(Icons.newspaper,color: Color(0xffFFB951),),
                                    Text('Новости'),
                                    Icon(FontAwesomeIcons.angleRight )

                                  ],
                                ),
                              ),
                              onTap: (){
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => News()));
                              }
                          ),
                          GestureDetector(

                              child: Padding(
                                padding: const EdgeInsets.only(left:10, right: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(Icons.list_alt_rounded,color: Color(0xffFFB951),),
                                    Text('История отправок'),
                                    Icon(FontAwesomeIcons.angleRight )

                                  ],
                                ),
                              ),
                              onTap: (){
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) =>  History()));
                              }
                          ),
                          GestureDetector(

                              child: Padding(
                                padding: const EdgeInsets.only(left:10, right: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(Icons.fact_check_sharp,color: Color(0xffFFB951),),
                                    Text('Тарифы'),
                                    Icon(FontAwesomeIcons.angleRight )

                                  ],
                                ),
                              ),
                              onTap: (){
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => Tarif()));
                              }
                          ),
                        ],
                  ),
                ),
             SizedBox(height: 15,),
                Container(
                  width: 395,
                  height: 325,
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius:  BorderRadius.circular(10),
                  ),
                  child: Column(
                    children:<Widget> [
                      GestureDetector(

                          child: Padding(
                            padding: const EdgeInsets.only(left:10, right: 10, top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.arrow_circle_down,color: Color(0xffFFB951),),
                                Text('О приложении'),
                                Icon(FontAwesomeIcons.angleRight )

                              ],
                            ),
                          ),
                          onTap: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => AboutApp()));
                          }
                      ),
                      GestureDetector(

                          child: Padding(
                            padding: const EdgeInsets.only(left:10, right: 10, top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.phone,color: Color(0xffFFB951),),
                                Text('Контакты'),
                                Icon(FontAwesomeIcons.angleRight )

                              ],
                            ),
                          ),
                          onTap: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => Contact()));
                          }
                      ),

                      GestureDetector(

                          child: Padding(
                            padding: const EdgeInsets.only(left:10, right: 10, top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.question_mark_rounded,color: Color(0xffFFB951),),
                                Text('Вопросы и ответы'),
                                Icon(FontAwesomeIcons.angleRight )

                              ],
                            ),
                          ),
                          onTap: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => Question()));
                          }
                      ),

                      GestureDetector(

                          child: Padding(
                            padding: const EdgeInsets.only(left:10, right: 10, top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.shield,color: Color(0xffFFB951),),
                                Text('Политика возврата денег'),
                                Icon(FontAwesomeIcons.angleRight )

                              ],
                            ),
                          ),
                          onTap: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => MyProfile()));
                          }
                      ),

                      GestureDetector(

                          child: Padding(
                            padding: const EdgeInsets.only(left:10, right: 10, top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(FontAwesomeIcons.userShield,color: Color(0xffFFB951),),
                                Text('Политика конфиденциальности'),
                                Icon(FontAwesomeIcons.angleRight )

                              ],
                            ),
                          ),
                          onTap: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => MyProfile()));
                          }
                      ),

                      GestureDetector(

                          child: Padding(
                            padding: const EdgeInsets.only(left:10, right: 10, top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(FontAwesomeIcons.personBooth,color: Color(0xffFFB951),),
                                Text('Выйти с аккаунта'),
                                Icon(FontAwesomeIcons.angleRight )

                              ],
                            ),
                          ),
                          onTap: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => LogOut()));
                          }
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
