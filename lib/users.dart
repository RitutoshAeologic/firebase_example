import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_example/google_signin.dart';
import 'package:google_sign_in/google_sign_in.dart';

final _firestore = FirebaseFirestore.instance;
final GoogleSignIn googleSignIn = GoogleSignIn();
final FirebaseAuth auth = FirebaseAuth.instance;

String? name;
String? email;
String? imageurl;

Future<String> signInWithGoogle() async{
  final GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
  final GoogleSignInAuthentication googleSignInAuthentication =
      await googleSignInAccount!.authentication;

  final AuthCredential credential = GoogleAuthProvider.credential(
    accessToken: googleSignInAuthentication.accessToken,
    idToken: googleSignInAuthentication.idToken
  );
  final UserCredential userCredential = await auth.signInWithCredential(credential);
  final User user = userCredential.user!;

  assert(user.email != null);
  assert(user.displayName != null);
  assert(user.photoURL != null);

  name = user.displayName;
  email = user.email;
  imageurl = user.photoURL;

  final User currentUser = await auth.currentUser!;
  assert(user.uid == currentUser.uid);
  
  return 'signInWithGoogle succeeded: $user';
  

}

void signOutGoogle() async{
  await googleSignIn.signOut();
  print("User Sign Out");
}