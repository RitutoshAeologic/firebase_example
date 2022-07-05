import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_example/users.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:auth_buttons/auth_buttons.dart';

final _firestore = FirebaseFirestore.instance;
final FirebaseAuth _auth = FirebaseAuth.instance;

class GoogleLogIn extends StatelessWidget {
  const GoogleLogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Google SignIn"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: GoogleAuthButton(
              themeMode: ThemeMode.dark,
              onPressed: (){
                signInWithGoogle().then((value) {
                  _firestore.collection('users').doc('auth').collection('guser').
                  add({
                    'email' : email, 'image': imageurl, 'name' : name,
                  });
                }).catchError((e){
                  print(e);
                }).then((value) {
                  Navigator.pushNamed(context, '/homepage');
                }).catchError((e)
                  {
                    print((e));
                  });
              },
            )
          )
        ],
      ),
    );
  }
}
