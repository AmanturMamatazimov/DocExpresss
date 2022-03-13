import 'package:flutter/material.dart';
import 'package:untitled/login.dart';
import 'package:untitled/screens/con_screen.dart';

class LastScreen extends StatefulWidget {
  const LastScreen({Key? key}) : super(key: key);

  @override
  State<LastScreen> createState() => _LastScreenState();
}

class _LastScreenState extends State<LastScreen> {



  final _formKey = GlobalKey<FormState>();
  final TextEditingController passwordController = new TextEditingController();



  @override
  Widget build(BuildContext context) {

    final passwordField = TextFormField(
      autofocus: false,
      controller: passwordController,
      keyboardType: TextInputType.emailAddress,
      onSaved: (value)
      {
        passwordController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: 'Ведите код',
          border:  OutlineInputBorder(
              borderRadius: BorderRadius.circular(15)
          )
      ),
    );



    final loginButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(15),
      color: Color(0xffFFB951),
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
    Navigator.push(context,
    MaterialPageRoute(builder: (context) => ConScreen()));
        },
        child: Text('Зарегистироваться',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold
          ),
        ),
      ),

    );



    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            color: Colors.white,
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 100),
                  SizedBox(height: 100,
                    child: Image.asset('assets/doc.jpg',
                      fit: BoxFit.contain,),),
                  SizedBox(height: 50),
                  Text('Завершение регистрации'),
                  SizedBox(height: 45),
                  Text('''Для завершения регистрации, введите код
 отправленный но ваш номер телефона'''),
                  SizedBox(height: 20),
                  passwordField, SizedBox(height: 15),

                  loginButton,SizedBox(height: 70),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('У вас есть аккаунт?  '),
                      GestureDetector(onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => LoginScreen()));
                      },
                        child: Text('Войти', style: TextStyle(
                            fontWeight:
                            FontWeight.w600, fontSize: 15),

                        ),)
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    ) ;
  }
}
