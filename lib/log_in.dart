import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String? emailid;
  String? idpassword;
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Firebase Demo"),
        centerTitle: true,
      ),
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: "Enter Email"
            ),
            onChanged: (value){
              setState(
                  (){
                  emailid = value;
                  }
              );
            },
          ),
          SizedBox(height: 10,),
          TextField(
            decoration: InputDecoration(
                labelText: "Enter Password"
            ),
            onChanged: (value){
              setState(
                      (){
                    idpassword = value;
                  }
              );
            },
            obscureText: true,
          ),
          SizedBox(height: 20,),
          TextButton(onPressed: ()
          {
            isLoading = true;
            FirebaseAuth.instance.signInWithEmailAndPassword(
                email: emailid!,
                password: idpassword!)
                .then((FirebaseUser){
              Navigator.pushNamed(context, '/homepage');
            })
                .catchError((e){
              print(e);
            });


          },
          child: Text("Log In"),),
          SizedBox(height: 10,),
          TextButton(onPressed: (){
            Navigator.pushNamed(context, '/signup');
          },
            child: Text("Sign Up"),),
          SizedBox(height: 10,),
          TextButton(onPressed: (){
            Navigator.pushNamed(context, '/googlelogin');
          },
            child: Text("Click to Google SignIn"),),
        ],
      )
    );
  }
}
