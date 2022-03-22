import 'package:flutter/material.dart';
import 'package:untitled/login.dart';
import 'package:untitled/screens/con_screen.dart';
import 'package:untitled/screens/link_screen.dart';
import 'package:untitled/screens/registration_screen.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({Key? key}) : super(key: key);

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    final passwordField = TextFormField(
      autofocus: false,
      controller: passwordController,
      keyboardType: TextInputType.phone,
      onSaved: (value) {
        passwordController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          // contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: 'Номер телефона',
          border: InputBorder.none),
    );

    final loginButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(15),
      color: Color(0xffFFB951),
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => LinkScreen()));
        },
        child: Text(
          'Восстановить пароль',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(),
              Column(
                children: [
                  Image.asset(
                    'assets/doc.png',
                    fit: BoxFit.contain,
                    width: 144,
                    height: 58,
                  ),
                  SizedBox(height: 50),
                  Text('Восстановление пароля',style: TextStyle(
                    color: Color(0xFF444444),
                    fontWeight: FontWeight.w600,
                    fontSize: 18
                  ),),
                  SizedBox(height: 45),
                  Text(
                    '''Для восстановления пароля, введите ваш номер телефона, на которую будет выслана ссылка для завершения восстановления доступа''',
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xFFEDEDEF),
                    ),
                    child: passwordField,
                  ),
                  SizedBox(height: 15),
                  loginButton,
                ],
              ),
              // SizedBox(height: 80),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('У вас есть аккаунт?  '),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()));
                        },
                        child: Text(
                          'Войти',
                          style: TextStyle(
                              color: Color(0xffFFB951),
                              fontWeight: FontWeight.w600,
                              fontSize: 15),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('У вас нету аккаунта? '),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      RagistrationScreen()));
                        },
                        child: Text(
                          'Зарегистрироваться',
                          style: TextStyle(
                              color: Color(0xffFFB951),
                              fontWeight: FontWeight.w600,
                              fontSize: 15),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
