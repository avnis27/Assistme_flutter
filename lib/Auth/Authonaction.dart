/*import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();

  Future signInWithGoogle() async {
    try {
      final GoogleSignInAccount googleUser = await GoogleSignIn().signIn();
      print(googleUser);
      if (googleUser != null) {
        final GoogleSignInAuthentication googleAuth =
            await googleUser.authentication;
        print(googleAuth);
        final GoogleAuthCredential credential = GoogleAuthProvider.credential(
          idToken: googleAuth.idToken,
          accessToken: googleAuth.accessToken,
        );
        print(credential);
        User user = (await _auth.signInWithCredential(credential)).user;
        print(user.providerData);
      }
    } catch (e) {
      print(e);
    }
  }
}
 google not attech
*/

import 'package:assistme/MeetAssist/meetAssistform.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;
final GoogleSignIn googleSignIn = GoogleSignIn();

String name;
String imageUrl;

Future<String> SignInWithGoogle() async {
  await Firebase.initializeApp();

  final GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
  final GoogleSignInAuthentication googleSignInAuthentication =
      await googleSignInAccount.authentication;

  final AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleSignInAuthentication.accessToken,
      idToken: googleSignInAuthentication.idToken);
  final UserCredential authResult =
      await _auth.signInWithCredential(credential);
  final User user = authResult.user;
  if (user != null) {
    assert(user.displayName != null);
    assert(user.photoURL != null);

    if (name.contains(" ")) {
      name = name.substring(0, name.indexOf(" "));
    }
    assert(!user.isAnonymous);
    assert(await user.getIdToken() != null);

    final User currentUser = _auth.currentUser;
    assert(user.uid == currentUser.uid);
    print('SignInWithGoogle  successded: $user');
   //Navigator.push(cont, MaterialPageRoute(builder: (currentUser)=> MeetAssist()));
  //  Navigator.push(context,
      //  MaterialPageRoute(builder: (context) => MeetAssist()));
    return '$user';
  }
  return null;

}
Future<void> SignOutGoogle()async{
  await googleSignIn.signOut();
  print('User signed out');
}




/*import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthProviderService {
  FirebaseAuth _auth = FirebaseAuth.instance;

  AuthProviderService._();
  static AuthProviderService instance = AuthProviderService._();

  Future<void> signIn() async {
    GoogleSignInAccount signInAccount = await GoogleSignIn().signIn();
    GoogleSignInAuthentication authentication =
        await signInAccount.authentication;

    AuthCredential authCredential = GoogleAuthProvider.credential(
      idToken: authentication.idToken,
      accessToken: authentication.accessToken,
    );
    await _auth.signInWithCredential(authCredential);
  }
}
*/