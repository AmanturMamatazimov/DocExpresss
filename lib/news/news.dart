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
  Widget getNews(String text)=>Padding(
    padding: const EdgeInsets.only(left: 3),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          width: 76,
          height: 25,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color(0xff6DA8FF)),
          child: Center(
              child: Text(
                text,
                style: TextStyle(color: Colors.white),
              )),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          width: 160,
          child: Text(
            '''Lorem ipsum dolor sit amet, consectetur adipiscing elit.''',
            style: TextStyle(fontSize: 14),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
            width: 160,
            child: Text(
                '''Dolor, amet in interdum leo.Tortor dui sit viverra fames turpis semper est, tortor.Habitant interdum interdum tortor, et lectus sollicitudin sit lectus nunc...'''))
      ],
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('Новости',
              style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff444444),
                  fontWeight: FontWeight.w600)),
          centerTitle: true,
          iconTheme: IconThemeData(color: Color(0xFF444444)),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
          child: Column(children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image(
                  image: AssetImage('assets/Rec.png'),
                  width: 165,
                  height: 200,
                ),
                getNews('Новости'),
              ],
            ),
            Divider(
              color: Colors.black12,
              indent: 5,
              endIndent: 5,
              height: 40,
              thickness: 1,
            ),
            Row(
              children: [
                Image(
                  image: AssetImage(
                    'assets/Rectangle.png',
                  ),
                  width: 165,
                  height: 200,
                ),
                getNews('Акция')
              ],
            ),
            Divider(
              color: Colors.black12,
              indent: 5,
              endIndent: 5,
              height: 40,
              thickness: 1,
            ),
            Row(children: [
              Image(
                image: AssetImage('assets/img.png'),
                width: 165,
                height: 200,
              ),
              getNews('Акция')
            ]),
          ]),
        ));
  }
}
