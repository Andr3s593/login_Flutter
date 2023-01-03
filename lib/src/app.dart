
import 'package:flutter/material.dart';

class MyAppForm extends StatefulWidget {
  MyAppForm({Key key}) : super(key: key);

  @override
  _MyAppFormState createState() => _MyAppFormState();
}

class _MyAppFormState extends State<MyAppForm> {

  String _nombre;
  String _email;
  String _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 195, 255, 240),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 40.0,
          vertical: 90.0
        ) ,
        children: <Widget> [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 100.0,
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage('images/logo1.png'),
              ),
              Text(
                'Login',
                style: TextStyle( 
                  fontFamily: 'TimesNewRoman',
                  fontSize: 50.0
                ),                
              ),
              Text(
                'Ricardo Piedra',
                style: TextStyle( 
                  fontFamily: 'TimesNewRoman',
                  fontSize: 20.0
                ),
              ),
              SizedBox(
                width: 160.0,
                height: 15.0,
                child: Divider(
                  color: Colors.blueGrey[600]
                ),
              ),
              TextField(
                enableInteractiveSelection: false,
                // autofocus: true,
                textCapitalization: TextCapitalization.characters,
                decoration: InputDecoration(
                  hintText: 'USER-NAME',
                  labelText: 'Username',
                  suffixIcon: Icon(
                    Icons.verified_user
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)
                  )
                ),                
              ),
              Divider(
                height: 18.0,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  labelText: 'Email',
                  suffixIcon: Icon( Icons.alternate_email),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)
                  )
                ),                
              ),
              Divider(
                height: 15.0,
              ),
              TextField(
                enableInteractiveSelection: false,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  labelText: 'Password',
                  suffixIcon: Icon( Icons.lock_outline),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)
                  )
                ),                
              ),
              Divider(
                height: 15.0,
              ),
              SizedBox(
                width: double.infinity,
                
              )
            ],
          )
        ],
      ),
    );
  }
}