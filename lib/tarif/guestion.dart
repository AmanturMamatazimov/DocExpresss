import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled/profile/profile.dart';

class Question extends StatefulWidget {
 
  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  String text='''Neque vel, platea maecenas duis nunc. Suspendisse vitae donec est varius. Sodales nibh id velit volutpat egestas. Mi malesuada felis, et viverra nibh imperdiet. Velit ut sed sit''';

  Widget buildText(BuildContext context) => ExpansionTile(
      title: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit?',
      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black),
      ),
    children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 18.0, top: 10,left: 15,right: 15),
            child: Text(text),
          ),
        ],
      )
    ],
  );
  Widget buildText2(BuildContext context) => ExpansionTile(
    title: Text('Facilisis sed elit fermentum varius gravida suspendisse?',
      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black),
    ),
    children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 18.0, top: 10,left: 15,right: 15),
            child: Text(text),
          ),
        ],
      )
    ],
  );
  Widget buildText3(BuildContext context) => ExpansionTile(
    title: Text('Lobortis dui, facilisis eu, ac morbi scelerisque augue arcu urna?',
      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black),
    ),
    children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 18.0, top: 10,left: 15,right: 15),
            child: Text(text),
          ),
        ],
      )
    ],
  );

  Widget buildText4(BuildContext context) => ExpansionTile(
    title: Text('Nunc egestas?',
      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black),
    ),
    children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 18.0, top: 10,left: 15,right: 15),
            child: Text(text),
          ),
        ],
      )
    ],
  );
  Widget buildText5(BuildContext context) => ExpansionTile(
    title: Text('Nunc egestas?',
      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black),
    ),
    children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 18.0, top: 10,left: 15,right: 15),
            child: Text(text),
          ),
        ],
      )
    ],
  );



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xffF7F6F6),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Вопросы и ответы ',
          style: TextStyle(
              fontSize: 16, color: Color(0xff444444), fontWeight: FontWeight.w600
          ),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Color(0xFF444444)),
      ),

      body: Center(
        child: Container(

          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
              child: Column(
                children: [
                  Container(
                    width: 375,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white
                    ),
                    child: Column(
                      children: [
                        buildText(context),

                      ],
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    width: 375,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white
                    ),
                    child: Column(
                      children: [
                        buildText2(context),

                      ],
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    width: 375,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white
                    ),
                    child: Column(
                      children: [
                        buildText3(context),

                      ],
                    ),
                  ),

                  SizedBox(height: 15,),
                  Container(
                    width: 375,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white
                    ),
                    child: Column(
                      children: [
                        buildText4(context),

                      ],
                    ),
                  ),

                  SizedBox(height: 15,),
                  Container(
                    width: 375,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white
                    ),
                    child: Column(
                      children: [
                        buildText5(context),

                      ],
                    ),
                  ),
                  SizedBox(height: 180,),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
