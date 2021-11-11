import 'package:flutter/material.dart';
import 'package:moodify/components/round_button.dart';
import 'package:moodify/components/input_text.dart';
import 'package:moodify/screens/login_screen.dart';
import 'package:moodify/screens/home_screen.dart';

class RegistrationScreen extends StatefulWidget {
  static String id = 'registration_screen';
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  String email;
  String password;
  String username = 'null';
  String dob = 'null';
  String country = 'null';

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
                height: 10,
              ),
              InputText(
                ontap: (value) {
                  username = value;
                },
                hintText: 'Enter your username',
                labelText: 'Username',
                prefixIcon: Icon(Icons.person_outline_outlined),
              ),
              InputText(
                ontap: (value) {
                  email = value;
                },
                hintText: 'Enter your email',
                labelText: 'Email',
                prefixIcon: Icon(Icons.email_outlined),
              ),
              InputText(
                ontap: (value) {
                  password = value;
                },
                hintText: 'Enter your password',
                labelText: 'password',
                prefixIcon: Icon(Icons.vpn_key_outlined),
              ),
              SizedBox(
                height: 10,
              ),
              RoundButton(
                  text: 'REGISTER',
                  ontap: () async {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  colour: Colors.green),
              SizedBox(
                height: 50,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Already have an account?',
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
                            LoginScreen.id,
                            ModalRoute.withName(RegistrationScreen.id));
                      },
                      child: Text(
                        'Login',
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
