import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled/profile/my_profile.dart';
class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {

  @override
  Widget build(BuildContext context) {
    final container = Center(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Container(
              width: 345,
              height: 239,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white
              ),
              child: Center(
                child: Column(
                    children: [

                      Padding(
                        padding: const EdgeInsets.only(top:22),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('#HX561871351', style: TextStyle(
                                fontSize: 16
                            ),),
                            Container(
                              width: 56,
                              height: 27,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Color(0xffFFB951)
                              ),
                              child: Center(child: Text('+500', style: TextStyle(fontSize: 16),)),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                    '01.01.2022'
                                ),
                                Text('03.01.2022')
                              ],
                            ),
                            SizedBox(height: 5,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                              children: [
                                Text('Кыргызстан, Бишкек'),
                                Text('Россия, Москва')
                              ],
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5, right: 5),
                        child: Column(
                          children:<Widget> [
                            SizedBox(height: 5),
                            Divider(color: Color(0xffFFB951),
                              indent: 5,
                              endIndent: 5,
                              height: 40,
                              thickness: 1,
                            ),
                            Text('Посылка доставлена', style: TextStyle(fontSize: 16),),
                            Divider(color: Colors.black26,
                              indent: 5,
                              endIndent: 5,
                              height: 30,
                              thickness: 1,
                            ),

                            Icon(FontAwesomeIcons.angleDown ),
                          ],
                        ),
                      )
                    ]
                ),
              ),
            )
          ],
        )
    );



    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('История',
          style: TextStyle(
              fontSize: 20, color: Color(0xff444444), fontWeight: FontWeight.bold
          ),

        ), leading: IconButton(onPressed: (){
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => MyProfile()));
      }, icon: Icon(FontAwesomeIcons.arrowLeft , color: Color(0xff444444),),
      ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            container,
            container,
            container,
            container,
            SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
}
