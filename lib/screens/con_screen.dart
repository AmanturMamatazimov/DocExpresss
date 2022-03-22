import 'package:flutter/material.dart';
import 'package:untitled/screens/main_screen.dart';

class ConScreen extends StatefulWidget {
  const ConScreen({Key? key}) : super(key: key);

  @override
  State<ConScreen> createState() => _ConScreenState();
}

class _ConScreenState extends State<ConScreen> {
  @override
  Widget build(BuildContext context) {
    final loginButton = Material(

      elevation: 0,
      borderRadius: BorderRadius.circular(15),
      color: Color(0xffFFB951),
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
        // minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => MainScreen()));
        },
        child: Text('Отправить первую посылку',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold
          ),
        ),
      ),

    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/doc.png',
                fit: BoxFit.contain,
                width: 144,
                height: 58,
              ),
              SizedBox(height: 97),
              Icon(Icons.where_to_vote_rounded,
              size: 42,
                color: Color(0xffFFB951),
              ),

              SizedBox(height: 22),
          Text('''Поздравляем!'''),
              Text('Регистрация завершена'),
              SizedBox(height: 45),

              loginButton

            ],
          ),
        ),
      ),
    );

  }
}
