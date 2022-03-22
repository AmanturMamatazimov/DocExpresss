import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled/profile/profile.dart';

class Tarif extends StatefulWidget {
  const Tarif({Key? key}) : super(key: key);

  @override
  State<Tarif> createState() => _TarifState();
}

class _TarifState extends State<Tarif> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Тарифы',
          style: TextStyle(
              fontSize: 16,
              color: Color(0xff444444),
              fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Color(0xFF444444)),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15.0,right: 15,top: 20),
              child: Column(
                children: [
                  Text(
                      '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dolor, amet in interdum leo. Tortor dui sit viverra fames turpis semper est, tortor. Habitant interdum interdum tortor, et lectus sollicitudin sit lectus nunc. Vel ornare netus donec at id quam nulla.'''),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 150,
                          height: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xffFFB951)),
                          child: Center(
                            child: Text('Все тарифы'),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 150,
                          height: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xffEFEFEF)),
                          child: Center(
                            child: Text('Быстрая доставка'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width:140,
                          child: Text(
                        '''Название и география доставка ''',
                        style: TextStyle(fontSize: 12),
                      )),
                      Container(
                        width: 140,
                        child: Text(
                          '''Вес груза и срок доставка ''',
                          style: TextStyle(fontSize: 12),
                        ),
                      )
                    ],
                  ),
                  Divider(
                    color: Color(0xFF808080),
                    indent: 5,
                    endIndent: 5,
                    height: 40,
                    thickness: 1,
                  ),
                  Row(
                    children: [
                      Container(
                        width:150,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Посылочка',
                              style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),
                            ),
                            Text('''Экономичная наземная доставка для частных лиц'''),
                            Text('''Кыргызстан, Казахстан, Россия, Беларусь ''')
                          ],
                        ),
                      ),
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
                      Container(
                        width:150,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Экспресс-лайт',
                              style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),
                            ),
                            Text('''Экономичная наземная доставка для частных лиц'''),
                            Text('''Кыргызстан, Казахстан, Россия, Беларусь ''')
                          ],
                        ),
                      ),
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
                      Container(
                        width:150,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Супер экспресс',
                              style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),
                            ),
                            Text('''Экономичная наземная доставка для частных лиц'''),
                            Text('''Кыргызстан, Казахстан, Россия, Беларусь ''')
                          ],
                        ),
                      ),
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
                      Container(
                        width:150,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Экспресс-тяжеловес',
                              style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),
                            ),
                            Text('''Экономичная наземная доставка для частных лиц'''),
                            Text('''Кыргызстан, Казахстан, Россия, Беларусь ''')
                          ],
                        ),
                      ),
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
                      Container(
                        width:150,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Магистральный экспресс',
                              style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),
                            ),
                            Text('''Экономичная наземная доставка для частных лиц'''),
                            Text('''Кыргызстан, Казахстан, Россия, Беларусь ''')
                          ],
                        ),
                      ),
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
                      Container(
                        width:150,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Международный экспресс документы',
                              style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),
                            ),
                            Text('''Экономичная наземная доставка для частных лиц'''),
                            Text('''Кыргызстан, Казахстан, Россия, Беларусь ''')
                          ],
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.black12,
                    indent: 5,
                    endIndent: 5,
                    height: 40,
                    thickness: 1,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
