import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled/profile/my_profile.dart';
import 'package:untitled/profile/profile.dart';

class Bonus extends StatefulWidget {
  const Bonus({Key? key}) : super(key: key);

  @override
  State<Bonus> createState() => _BonusState();
}

class _BonusState extends State<Bonus> {
  @override
  Widget build(BuildContext context) {
    final divider = Divider(color: Colors.black12,
      indent: 5,
      endIndent: 5,
      height: 40,
      thickness: 1,
    );


    final row = Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text('#HX561871351'),
        Text('21.01.2022'),
        Container(
          width: 56,
          height: 27,
          child: Center(child: Text('+500')),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Color(0xffFFB951),
          ),

        )
      ],
    );


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Бонусная карта',
          style: TextStyle(
              fontSize: 20, color: Color(0xff444444), fontWeight: FontWeight.bold
          ),

        ), leading: IconButton(onPressed: (){
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => Profile()));
      }, icon: Icon(FontAwesomeIcons.arrowLeft , color: Color(0xff444444),),
      ),
      ),

      body: SingleChildScrollView(
        child: Container(
          color: Color(0xffE5E5E5),
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 20),
                  child: Column(
                    children: [
                      Text('''Lorem ipsum dolor sit amet, consectetur adipiscing 
elit. Dolor, amet in interdum leo. Tortor dui sit viverra 
fames turpis semper est, tortor. Habitant interdum
tortor, et lectus sollicitudin sit lectus nunc.
Vel ornare netus donec at id quam nulla.'''),

                    SizedBox(height: 20,),
                      Container(
                        width: 345,
                        height: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Color(0xffFFB951)
                        ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 30, top: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                'Накопленные бонусы'),
                                    Text('25 781 сом', style: TextStyle(fontSize: 40),),

                                  ],
                                ),

                                Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.blue
                                  ),
                                )
                              ],
                            ),
                ),
                        ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40,),
              Container(
                width: 370,
                height: 623,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 0),
                      child: Row(

                        children: [
                          Text('Номер груза',style: TextStyle(
                            fontSize: 18

                          ),),
                          Text('Дата',style: TextStyle(
                              fontSize: 18
                          ),
                          )
                        ],
                      ),
                    ),

                    divider,
                    row,
                    divider,
                    row,
                    divider,
                    row,
                    divider,
                    row,
                    divider,
                    row,
                    divider,
                    row,
                    divider,
                    row,
                    divider,
                    row,






                  ],
                ),

              ),

            ],
          ),
        ),
      ),
    );
  }
}
