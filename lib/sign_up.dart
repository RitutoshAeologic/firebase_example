import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final _firestore = FirebaseFirestore.instance;
  String? emailid ;
  String? idpassword ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:   Column(
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
          TextButton(onPressed: () {
            FirebaseAuth.instance.createUserWithEmailAndPassword(
                email: emailid!, password: idpassword!)
                .then((signedInUser){
                  _firestore.collection('users').add({'email' : emailid, 'pass' : idpassword,})
                      .then((value){
                        if (signedInUser!= null){
                          Navigator.pushNamed(context, '/homepage');
                        }
                      }).catchError((e){
                        print(e);
                      });
                })
                .catchError((e){
              const snackdemo = SnackBar(
                content: Text('Email already registered'),
                backgroundColor: Colors.green,
                elevation: 10,
                behavior: SnackBarBehavior.floating,
                margin: EdgeInsets.all(5),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackdemo);
                  print(e);
                });
            },
            child: Text("Sign Up"),),
        ],
      ),
    );
  }
}
