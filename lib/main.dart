// import 'package:firebase_example/utils/prefer.dart';
// import 'package:firebase_example/utils/routes.dart';
// import 'package:firebase_example/view_model/home_view_model.dart';
// import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/services.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:provider/provider.dart';
// import 'login_page.dart';
//
// void main() async{
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(MyApp());
// }
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'FireBase Demo',
//       initialRoute: '/',
//       routes: Navigate.routes,
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//     );
//   }
// }
//
// // void main() => runApp(MyApp());
// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       debugShowCheckedModeBanner: false,
// //       title: 'Flutter Login',
// //       theme: ThemeData(
// //         primarySwatch: Colors.amber,
// //       ),
// //       home: LoginPage(),
// //     );
// //   }
// // }
// // void main() {
// //   WidgetsFlutterBinding.ensureInitialized();
// //   Prefs.init();
// //   setLocator();
// //   runApp(MultiProvider(child: MyApp(), providers: [
// //     ChangeNotifierProvider<HomeViewModel>(
// //       builder: (_) => HomeViewModel(),
// //     ),
// //   ],));
// // }
// //
// // class MyApp extends StatefulWidget{
// //   final FirebaseAuth _auth = FirebaseAuth.instance;
// //
// //   @override
// //   _MyAppState createState() => _MyAppState();
// // }
// //
// // class _MyAppState extends State<MyApp> {
// //   late Locale locale;
// //   bool localeLoaded = false;
// //
// //   @override
// //   void initState() {
// //     super.initState();
// //     print('initState()');
// //
// //     //MyApp.setLocale(context, locale);
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     SystemChrome.setPreferredOrientations([
// //       DeviceOrientation.portraitUp,
// //       DeviceOrientation.portraitDown,
// //     ]);
// //     SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
// //         systemNavigationBarColor: Colors.grey[400],
// // //        statusBarColor: Styles.blueColor,
// //         statusBarIconBrightness:
// //         Brightness.light //or set color with: Color(0xFF0000FF)
// //     ));
// //     return ChangeNotifierProvider<SignInViewModel>(
// //       builder: (_) => SignInViewModel(),
// //       child: Center(
// //         child: MaterialApp(
// //           initialRoute: '/',
// //           debugShowCheckedModeBanner: false,
// //           onGenerateRoute: Routes.onGenerateRoute,
// //
// //           theme: ThemeData(
// //             primaryColor:Colors.black,
// //
// //             fontFamily: 'FA',
// //
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
// //
// // class HomeScreen extends StatelessWidget {
// //    HomeScreen({Key? key}) : super(key: key);
// //    final FirebaseAuth _auth = FirebaseAuth.instance;
// //    final GoogleSignIn _googleSignIn = GoogleSignIn();
// //   @override
// //   Widget build(BuildContext context) {
// //     return
// //       Scaffold(
// //       appBar: AppBar(
// //         title: Text("Firebase Demo"),
// //       ),
// //       body: SingleChildScrollView(
// //         child:Column(
// //           children: <Widget>[
// //             SizedBox(height: 20,),
// //             Center(
// //               child: Container(
// //                 height: 80,
// //                 width: 80,
// //                 decoration: BoxDecoration(
// //                   image: DecorationImage(
// //                     image:
// //                     AssetImage('assets/img/person.png'),
// //                   ),),),
// //             ),
// //             Container(
// //               child: Form(
// //                // key: _userLoginFormKey,
// //                 child: Padding(
// //                   padding: const EdgeInsets.only(top:5.0,bottom:15,left: 10,right: 10),
// //                   child: Card(
// //                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
// //                     child: Column(
// //                       children: <Widget>[
// //                         Padding(
// //                           padding: const EdgeInsets.all(15.0),
// //                           child: Text("Login",style:TextStyle(fontWeight: FontWeight.w800,fontSize: 25),),
// //                         ),
// //                         Padding(
// //                           padding: const EdgeInsets.only(top:15.0,right: 14,left: 14,bottom: 8),
// //                           child: TextFormField(
// //                  //           controller: model.userIdController,
// //                             style: TextStyle(color: Colors.black,fontWeight:FontWeight.bold,fontSize: 15),
// //                             decoration: InputDecoration(
// //                               border: OutlineInputBorder(
// //                                 borderRadius: BorderRadius
// //                                     .all(
// //                                     Radius.circular(15)),
// //                               ),
// //                               hintText: "Email",
// //                               hintStyle: TextStyle(fontSize: 15) ,
// //                               contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
// //                             ),
// //                             cursorColor:Colors.black,
// //                             keyboardType: TextInputType.emailAddress,
// //                             inputFormatters: [
// //                    //           BlacklistingTextInputFormatter
// //                      //             .singleLineFormatter,
// //                             ],),),
// //                         Padding(
// //                           padding: const EdgeInsets.only(top:5.0,right: 14,left: 14,bottom: 8),
// //                           child: TextFormField(
// //                        //     controller: model.passwordController,
// //                          //   obscureText: !model.passwordVisible,
// //                             obscureText: true,
// //                             style: TextStyle(color: Colors.black,fontWeight:FontWeight.bold,fontSize: 15),
// //                             decoration: InputDecoration(
// //                               border: OutlineInputBorder(
// //                                 borderRadius: BorderRadius
// //                                     .all(
// //                                     Radius.circular(15)),
// //                               ),
// //                               hintText: "Password",
// //                               contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
// //                               hintStyle: TextStyle(fontSize: 15) ,
// //                               suffixIcon: IconButton(
// //                                   icon: Icon(
// //                                     // model.passwordVisible
// //                                     //   ? Icons.visibility
// //                                     //   :
// //                                     Icons.visibility_off,color: Color(0xFFE6E6E6),),
// //                                   onPressed: () {
// //                                     // model.passwordVisible =
// //                                     // !model
// //                                     //     .passwordVisible;
// //                                   }),),
// //                             cursorColor:Colors.black,
// //                             inputFormatters: [
// //                              // BlacklistingTextInputFormatter.singleLineFormatter,
// //                             ],),),
// //                         SizedBox(height: 16,),
// //                         InkWell(
// //                           child: Container(
// //                               width:210,
// //                               height: 50,
// //                               margin: EdgeInsets.only(top: 25),
// //                               decoration: BoxDecoration(
// //                                   borderRadius: BorderRadius.circular(20),
// //                                   color:Colors.blue
// //                               ),
// //                               child: Center(
// //                                   child: Row(
// //                                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //                                     children: <Widget>[
// //                                       Container(
// //                                         height: 30.0,
// //                                         width: 30.0,
// //                                         decoration: BoxDecoration(
// //                                           image: DecorationImage(
// //                                               image:
// //                                               AssetImage('assets/img/google.png'),
// //                                               fit: BoxFit.cover),
// //                                           shape: BoxShape.circle,
// //
// //                                         ),
// //                                       ),
// //                                       Text('Sign in with Google',
// //                                         style: TextStyle(
// //                                             fontSize: 16.0,
// //                                             fontWeight: FontWeight.bold,
// //                                             color: Colors.white
// //                                         ),
// //                                       ),
// //                                     ],
// //                                   )
// //                               )
// //                           ),
// //                           onTap: ()
// //                           async{
// //                             // hp                      signInWithGoogle(model)
// //                             //     .then((FirebaseUser user){
// //                             //   model.clearAllModels();
// //                             //   Navigator.of(context).pushNamedAndRemoveUntil
// //                             //     (RouteName.Home, (Route<dynamic> route) => false
// //                             //   );}
// //                             // ).catchError((e) => print(e));
// //                           },
// //                         ),
// //                         SizedBox(height: 16,),
// //                       ],),
// //                   ),),
// //               ),),
// //           ],),
// //       ),
// //     );
// //   }
// // }
// //
// class GoogleLogIn extends StatefulWidget {
//   const GoogleLogIn({Key? key}) : super(key: key);
//
//   @override
//   State<GoogleLogIn> createState() => _GoogleLogInState();
// }
//
// class _GoogleLogInState extends State<GoogleLogIn> {
//
//   GlobalKey<FormState> _userLoginFormKey = GlobalKey();
//  // FirebaseUser _user;
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   final GoogleSignIn _googleSignIn = GoogleSignIn();
//
//   bool isSignIn =false;
//   bool google =false;
//
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       appBar: AppBar(
//         title: Text("Firebase Demo"),
//       ),
//       body: SingleChildScrollView(
//         child:Column(
//           children: <Widget>[
//             SizedBox(height: 20,),
//             Center(
//               child: Container(
//                 height: 80,
//                 width: 80,
//                 decoration: BoxDecoration(
//                   image: DecorationImage(
//                     image:
//                     AssetImage('assets/img/person.png'),
//                   ),),),
//             ),
//             Container(
//               child: Form(
//                 // key: _userLoginFormKey,
//                 child: Padding(
//                   padding: const EdgeInsets.only(top:5.0,bottom:15,left: 10,right: 10),
//                   child: Card(
//                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
//                     child: Column(
//                       children: <Widget>[
//                         Padding(
//                           padding: const EdgeInsets.all(15.0),
//                           child: Text("Login",style:TextStyle(fontWeight: FontWeight.w800,fontSize: 25),),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(top:15.0,right: 14,left: 14,bottom: 8),
//                           child: TextFormField(
//                             //           controller: model.userIdController,
//                             style: TextStyle(color: Colors.black,fontWeight:FontWeight.bold,fontSize: 15),
//                             decoration: InputDecoration(
//                               border: OutlineInputBorder(
//                                 borderRadius: BorderRadius
//                                     .all(
//                                     Radius.circular(15)),
//                               ),
//                               hintText: "Email",
//                               hintStyle: TextStyle(fontSize: 15) ,
//                               contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
//                             ),
//                             cursorColor:Colors.black,
//                             keyboardType: TextInputType.emailAddress,
//                             inputFormatters: [
//                               //           BlacklistingTextInputFormatter
//                               //             .singleLineFormatter,
//                             ],),),
//                         Padding(
//                           padding: const EdgeInsets.only(top:5.0,right: 14,left: 14,bottom: 8),
//                           child: TextFormField(
//                             //     controller: model.passwordController,
//                             //   obscureText: !model.passwordVisible,
//                             obscureText: true,
//                             style: TextStyle(color: Colors.black,fontWeight:FontWeight.bold,fontSize: 15),
//                             decoration: InputDecoration(
//                               border: OutlineInputBorder(
//                                 borderRadius: BorderRadius
//                                     .all(
//                                     Radius.circular(15)),
//                               ),
//                               hintText: "Password",
//                               contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
//                               hintStyle: TextStyle(fontSize: 15) ,
//                               suffixIcon: IconButton(
//                                   icon: Icon(
//                                     // model.passwordVisible
//                                     //   ? Icons.visibility
//                                     //   :
//                                     Icons.visibility_off,color: Color(0xFFE6E6E6),),
//                                   onPressed: () {
//                                     // model.passwordVisible =
//                                     // !model
//                                     //     .passwordVisible;
//                                   }),),
//                             cursorColor:Colors.black,
//                             inputFormatters: [
//                               // BlacklistingTextInputFormatter.singleLineFormatter,
//                             ],),),
//                         SizedBox(height: 16,),
//                         InkWell(
//                           child: Container(
//                               width:210,
//                               height: 50,
//                               margin: EdgeInsets.only(top: 25),
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(20),
//                                   color:Colors.blue
//                               ),
//                               child: Center(
//                                   child: Row(
//                                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                                     children: <Widget>[
//                                       Container(
//                                         height: 30.0,
//                                         width: 30.0,
//                                         decoration: BoxDecoration(
//                                           image: DecorationImage(
//                                               image:
//                                               AssetImage('assets/img/google.png'),
//                                               fit: BoxFit.cover),
//                                           shape: BoxShape.circle,
//
//                                         ),
//                                       ),
//                                       Text('Sign in with Google',
//                                         style: TextStyle(
//                                             fontSize: 16.0,
//                                             fontWeight: FontWeight.bold,
//                                             color: Colors.white
//                                         ),
//                                       ),
//                                     ],
//                                   )
//                               )
//                           ),
//                           onTap: ()
//                           async{
//                             // hp                      signInWithGoogle(model)
//                             //     .then((FirebaseUser user){
//                             //   model.clearAllModels();
//                             //   Navigator.of(context).pushNamedAndRemoveUntil
//                             //     (RouteName.Home, (Route<dynamic> route) => false
//                             //   );}
//                             // ).catchError((e) => print(e));
//                           },
//                         ),
//                         SizedBox(height: 16,),
//                       ],),
//                   ),),
//               ),),
//           ],),
//       ),
//     );
//   }
// }
//
//

import 'package:firebase_example/sign_up.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'google_signin.dart';
import 'home_page.dart';
import 'log_in.dart';

void main() async{
   WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp();
   runApp(MyApp());
 }
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
      routes: {
        '/signup' : (_)=> SignUp(),
        '/homepage' : (_)=> HomePage(),
        '/login' : (_)=> Login(),
        '/googlelogin' : (_)=> GoogleLogIn()
      },
    );
  }
}
