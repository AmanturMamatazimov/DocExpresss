import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled/news/news2.dart';
import 'package:untitled/profile/profile.dart';
class News extends StatefulWidget {
  const News({Key? key}) : super(key: key);

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Новости',
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
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 3, right: 3),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image(image: AssetImage('assets/Rec.png'),),
                   Padding(
                     padding: const EdgeInsets.only(left: 3),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                         TextButton(onPressed: (){
                           Navigator.push(context,
                               MaterialPageRoute(builder: (context) => NewsScreen()));
                         }, child: Text('News'),

                         ),
                          SizedBox(
                            height: 5,
                          ),

                          Text(
 '''Lorem ipsum dolor sit
amet, consectetur
adipiscing elit. ''',style: TextStyle(fontSize: 14),),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
 '''Dolor, amet in interdum leo. 
Tortor dui sit viverra fames
turpis semper est, tortor. 
Habitant interdum interdum 
tortor, et lectus sollicitudin sit 
lectus nunc...''')
                        ],
                      ),
                   ),


          ],
        ),
      ),
            Divider(color: Colors.black12,
              indent: 5,
              endIndent: 5,
              height: 40,
              thickness: 1,
            ),
            Row(
              children: [

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(image: AssetImage('assets/Rectangle.png'),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 76,
                        height: 25,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xff6DA8FF)
                        ),
                        child: Center(child: Text('Акция',style: TextStyle(color: Colors.white),)),
                      ),
                      Text(
                        '''Lorem ipsum dolor sit
amet, consectetur
adipiscing elit. ''',style: TextStyle(fontSize: 14),),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                          '''Dolor, amet in interdum leo. 
Tortor dui sit viverra fames
turpis semper est, tortor. 
Habitant interdum interdum 
tortor, et lectus sollicitudin sit 
lectus nunc...'''),
                    ],
                  ),
                ),
              ],
            ),
      Divider(color: Colors.black12,
        indent: 5,
        endIndent: 5,
        height: 40,
        thickness: 1,
      ),
      Row(
          children: [

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(image: AssetImage('assets/img.png'),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 76,
                    height: 25,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xff6DA8FF)
                    ),
                    child: Center(child: Text('Акция',style: TextStyle(color: Colors.white),)),
                  ),
                  Text(
                    '''Lorem ipsum dolor sit
amet, consectetur
adipiscing elit. ''',style: TextStyle(fontSize: 14),),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                      '''Dolor, amet in interdum leo. 
Tortor dui sit viverra fames
turpis semper est, tortor. 
Habitant interdum interdum 
tortor, et lectus sollicitudin sit 
lectus nunc...'''),
                ],
              ),
            ),
      ]
    ),
      ]
    ),
      )
      );

  }
}
