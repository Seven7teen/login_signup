import 'package:flutter/material.dart';
import 'package:moodify/components/round_button.dart';
import 'package:moodify/screens/registration_screen.dart';
import 'package:moodify/screens/home_screen.dart';
import 'package:moodify/screens/welcome_screen.dart';
import 'package:moodify/components/input_text.dart';

class LoginScreen extends StatefulWidget {
  static String id = 'login_screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String email;
  String password;
  final email_c = TextEditingController();
  final pass_c = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Flexible(
                child: Hero(
                  tag: 'logo',
                  child: Container(
                    height: 200.0,
                    child: Image.asset('assets/moodify_logo.png'),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              InputText(
                controller: email_c,
                ontap: (value) {
                  email = value;
                },
                hintText: 'Enter your email',
                labelText: 'Email',
                prefixIcon: Icon(Icons.email_outlined),
              ),
              InputText(
                controller: pass_c,
                ontap: (value) {
                  password = value;
                },
                hintText: 'Enter your password',
                labelText: 'password',
                prefixIcon: Icon(Icons.vpn_key_outlined),
              ),
              SizedBox(
                height: 30,
              ),
              RoundButton(
                  text: 'LOGIN',
                  ontap: () async {
                    email_c.clear();
                    pass_c.clear();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ),
                    );
                  },
                  colour: Colors.lightBlueAccent),
              SizedBox(
                height: 50,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Dont have an account?',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamedAndRemoveUntil(
                            RegistrationScreen.id,
                            ModalRoute.withName(WelcomeScreen.id));
                      },
                      child: Text(
                        'Register',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 16,
                        ),
                      ),
                    ),
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
