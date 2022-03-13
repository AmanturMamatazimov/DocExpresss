import 'package:flutter/material.dart';

class Send extends StatefulWidget {
  const Send({Key? key}) : super(key: key);

  @override
  State<Send> createState() => _SendState();
}

class _SendState extends State<Send> {

  bool value = false;
  late int selectedRadio;
  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
  }

  setSelectedRadio(int val){
    setState(() {
      selectedRadio = val;
    });
  }

  final boxChek = Container(
    width: 345,
    height: 80,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: Color(0xffEDEDEF),
    ),

    child: Padding(
      padding: const  EdgeInsets.all(20),
      child: Row(
        children: [

          Text(
''' Сейф пакет стандарт
438 * 575 * 50'''
          ),
          Padding(
            padding: const EdgeInsets.only(left: 70),
            child: ButtonBar(
              children: <Widget>[
                Radio(
                  value: 1,
                  groupValue: 0,
                  activeColor: Colors.blue,
                  onChanged: (val){
                    print('Radio$val');

                  },
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );

  final boxCheked = Container(
    width: 345,
    height: 80,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: Color(0xffEDEDEF),
    ),

    child: Padding(
      padding: const  EdgeInsets.all(20),
      child: Row(
        children: [

          Text(
              ''' Пакет СД'''
          ),
          Padding(
            padding: const EdgeInsets.only(left: 140),
            child: ButtonBar(
              children: <Widget>[
                Radio(
                  value: 1,
                  groupValue: 0,
                  activeColor: Colors.blue,
                  onChanged: (val){
                    print('Radio$val');

                  },
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    body: SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 18.0),
          child: Column(
              children: [
                boxChek,
                SizedBox(height: 15,),
                boxChek,
                SizedBox(height: 15,),
                boxChek,
                SizedBox(height: 15,),
                boxChek,
                SizedBox(height: 15,),
                boxChek,
                SizedBox(height: 15,),
                boxChek,
                SizedBox(height: 15,),
                boxCheked,
                SizedBox(height: 15,),
                boxCheked,
                SizedBox(height: 15,),
                boxChek,
                SizedBox(height: 15,),
                boxChek,
                SizedBox(height: 15,),
                boxChek,
                SizedBox(height: 15,),
                boxCheked,
                SizedBox(height: 15,),
                boxCheked,
                SizedBox(height: 15,),

              ],
            ),
        ),
      ),
    ),
    );
  }
}
