import 'package:flutter/material.dart';
import 'package:viva_app/home.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:viva_app/sidebar.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  saveUserInfo() async {
    SharedPreferences info = await SharedPreferences.getInstance();
    info.setString('email', email.text);
    info.setString('password', password.text);
}

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xFFDBE7F5),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            height: 279,
            width: 294,
            image: AssetImage('login.png'),
          ),
          Text('Login',
              style: TextStyle(
                  fontSize: 40,
                  height: 0,
                  fontFamily: 'MontaguSlab',
                  color: Color(0xFFA663CC),
                  fontWeight: FontWeight.w600)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 41, top: 21, bottom: 20),
                child: Text(
                  'Email',
                  style: TextStyle(
                    fontFamily: 'MontaguSlab',
                    fontWeight: FontWeight.w300,
                    fontSize: 20,
                    color: Color(0xFFA663CC),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 40, right: 40),
                height: 60,
                child: TextFormField(
                  controller: email,
                  style: TextStyle(fontWeight: FontWeight.w100, fontSize: 30),
                  onChanged: (value) {},
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Color(0xFF120D3A), width: 2),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 41, top: 21, bottom: 20),
                child: Text(
                  'Password',
                  style: TextStyle(
                    fontFamily: 'MontaguSlab',
                    fontWeight: FontWeight.w300,
                    fontSize: 20,
                    color: Color(0xFFA663CC),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 40, right: 40),
                height: 60,
                child: TextFormField(
                  controller: password,
                  obscureText: true,
                  style: TextStyle(fontWeight: FontWeight.w100, fontSize: 30),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Color(0xFF120D3A), width: 2),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.only(right: 41, top: 21, bottom: 20),
                child: Text(
                  'Forgot password?',
                  style: TextStyle(
                    fontFamily: 'MontaguSlab',
                    fontWeight: FontWeight.w100,
                    fontSize: 12,
                    color: Color(0xFFA663CC),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                alignment: Alignment.center,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF6F2DBD),
                    padding: EdgeInsets.only(
                        left: 65, right: 65, top: 17, bottom: 17),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                  onPressed: () async{
                    await saveUserInfo();
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Sidebar()));
                  },
                  child: Text('Login',
                      style:
                      TextStyle(fontSize: 20, fontFamily: 'MontaguSlab')),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
  }

