import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled/profile/profile.dart';
import 'package:untitled/screens/main_screen.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Мой профиль',
          style: TextStyle(
              fontSize: 16, color: Color(0xff444444), fontWeight: FontWeight.w600
          ),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Color(0xFF444444)),
      ),

      body:
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 38.0,left: 15, right: 15),
                  child: Container(
                    width: 100,
                    height: 100,

                    decoration: BoxDecoration(
                        color: Color(0xffFFB951),
                      borderRadius: BorderRadius.circular(35),
                    ) ,
                      child:Icon(Icons.person, color: Colors.white, size: 60,)
                  ),
    ),
              SizedBox(height: 30),
                Container(
                  padding: EdgeInsets.all(15),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xFFEDEDEF),
                        ),
                        child: TextFormField(
                          autofocus: false,
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                              hintText: 'Дженалиев Азим',
                              border: InputBorder.none
                          ),
                        ),
                      ),
                      SizedBox(height: 20),

                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xFFEDEDEF),
                        ),
                        child: TextFormField(

                          autofocus: false,
                          keyboardType: TextInputType.phone,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                              hintText: '+996559180033',
                              border: InputBorder.none
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xFFEDEDEF),
                        ),
                        child: TextFormField(
                          autofocus: false,
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                              hintText: 'Кыргызстан, г.Бишкек',
                            border: InputBorder.none
                          ),
                        ),
                      ),
  ]
  ),
                ),
                SizedBox(height: 45),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xffFFB951),
                    child: MaterialButton(
                      padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                      minWidth: MediaQuery.of(context).size.width,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => MainScreen()));
                      },
                      child: Text('Сохранить',
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
    );

  }
}
