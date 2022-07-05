import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_example/users.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? emailid;
  String? idpassword;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to Home Page'),
        centerTitle: true,
      ),
      backgroundColor: Colors.greenAccent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,        children: [
          SizedBox(height: 18,),
          Center(child: Image.asset('assets/img/person.png')),
        SizedBox(height: 10,),
        TextButton(onPressed: (){
          FirebaseAuth.instance.signOut().then((value){
            signOutGoogle();
            Navigator.pushNamed(context, '/login');

          }).catchError((e){
            const snackdemo = SnackBar(
              content: Text('Email or Password Incorrect'),
              backgroundColor: Colors.green,
              elevation: 10,
              behavior: SnackBarBehavior.floating,
              margin: EdgeInsets.all(5),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackdemo);
            print(e);

          });
        },
            child: Text('Sign Out'))
        ],
      ),
    );
  }
}
