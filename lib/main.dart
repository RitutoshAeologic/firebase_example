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


import 'package:firebase_example/firebase_notification/notification_screen.dart';
import 'package:firebase_example/firestore_database/db_homepage.dart';
import 'package:firebase_example/signin_login/sign_up.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'firebase_notification/notificationservice/local_notification_service.dart';
import 'signin_login/google_signin.dart';
import 'signin_login/home_page.dart';
import 'signin_login/log_in.dart';

Future<void> backgroundHandler(RemoteMessage message) async {
  print(message.data.toString());
  print(message.notification!.title);
}
void main() async{
   WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp();
   FirebaseMessaging.onBackgroundMessage(backgroundHandler);
   LocalNotificationService.initialize();
       runApp(MyApp());
 }
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: DbHomePage(),
//       routes: {
//         '/signup' : (_)=> SignUp(),
//         '/homepage' : (_)=> HomePage(),
//         '/login' : (_)=> Login(),
//        // '/googlelogin' : (_)=> GoogleLogIn()
//       },
//     );
//   }
// }


class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        // CHeck for Errors
        if (snapshot.hasError) {
          print("Something went Wrong");
        }
        // once Completed, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return MaterialApp(
            title: 'Flutter Firestore CRUD',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            debugShowCheckedModeBanner: false,
            home: NotificationScreen(),
          );
        }
        return CircularProgressIndicator();
      },
    );
  }
}