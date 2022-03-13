import 'package:flutter/material.dart';
import 'package:untitled/home/calculus.dart';
import 'package:untitled/home/choose.dart';
import 'package:untitled/home/home_screen.dart';
import 'package:untitled/profile/profile.dart';
import 'package:untitled/home/search.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int index = 0;
  final screens = [
    Home(),
    Calculus(),
    Search(),
    Profile()

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //
      //   title: Padding(
      //     padding: const EdgeInsets.only(left: 134,),
      //     child: Text('Cовктская 123',
      //       style: new TextStyle(color: Color(0xff444444)), ),
      //   ),
      //   backgroundColor: Colors.white,
      //   leading: Container(
      //     width: 55,
      //     height: 22,
      //     child: Padding(
      //       padding: const EdgeInsets.only(left: 15),
      //       child: Image.asset('assets/doc.jpg'),
      //     ),
      //   ),
      // ),
      body: screens[index],

      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Color(0xffFFB951)
        ),
      child: NavigationBar(
        selectedIndex: index,
        onDestinationSelected: (index) =>
          setState(() => this.index = index),

        destinations: [
          NavigationDestination(
            icon: Icon(Icons.home,),
            label:  'Главная',),
          NavigationDestination(
            icon:Icon(Icons.calculate,),
            label:  'Калькулятор',),
          NavigationDestination(
            icon:Icon(Icons.search,),
            label:  'Отследить',),
          NavigationDestination(
            icon:Icon(Icons.person,),
            label:  'Профиль',),
        ],
      )

      ),
    );
  }
}
