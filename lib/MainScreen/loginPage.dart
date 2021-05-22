import 'package:assistme/Auth/Authonaction.dart';
import 'package:assistme/MainScreen/AfterLoginLandingScreen.dart';
import 'package:assistme/MainScreen/LandingPage.dart';
import 'package:assistme/MainScreen/forgotPasswordPage.dart';
import 'package:assistme/MainScreen/signupPage.dart';
import 'package:assistme/MeetAssist/meetAssistform.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:http/http.dart' as http;

GoogleSignIn googleSignIn = GoogleSignIn(
  scopes: <String>['email'],
);

class Login extends StatefulWidget {
  @override
  _LoginPage createState() => _LoginPage();
}

class _LoginPage extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  static final FacebookLogin facebookSignIn = new FacebookLogin();

  String _message = 'Log in/out by pressing the buttons below.';

  Future<Null> _login() async {
    final FacebookLoginResult result = await facebookSignIn.logIn(['email']);

    switch (result.status) {
      case FacebookLoginStatus.loggedIn:
        final FacebookAccessToken accessToken = result.accessToken;
        _showMessage('''
         Logged in!
          Token: ${accessToken.token}
         User id: ${accessToken.userId}
         Expires: ${accessToken.expires}
         Permissions: ${accessToken.permissions}
         Declined permissions: ${accessToken.declinedPermissions}
         ''');
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => MeetAssist()));
        break;
      case FacebookLoginStatus.cancelledByUser:
        _showMessage('Login cancelled by the user.');
        break;
      case FacebookLoginStatus.error:
        _showMessage('Something went wrong with the login process.\n'
            'Here\'s the error Facebook gave us: ${result.errorMessage}');
        break;
    }
  }

  Future<Null> _logOut() async {
    await facebookSignIn.logOut();
    _showMessage('Logged out.');
  }

  void _showMessage(String message) {
    setState(() {
      _message = message;
    });
  }

  GoogleSignInAccount _currentUser;

  Future<void> _handleSignIn() async {
    try {
      await googleSignIn.signIn();
      setState(() {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => MeetAssist()));
      });
    } catch (error) {
      print(error);
    }
  }

  /* Future<void>signInWithFacebook()async{
    try{
      var facebookLogin= new FacebookLogin();
      var result =await facebookLogin.logIn(['email']);
      if(result.status==FacebookLoginStatus.loggedIn){
        final AuthCredential credential =FacebookAuthProvider.getCredential(
            accessToken:result.accessToken.token,
        );
        final FirebaseUser user= (await FirebaseAuth.instance.signInWithCredential(credential)).user;
        print('signed in '+ user.displayName);
        return user;

      }

    }catch(e){
      print(e.message);
    }
  }
  */

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    googleSignIn.onCurrentUserChanged.listen((GoogleSignInAccount account) {
      setState(() {
        _currentUser = account;
      });
      if (_currentUser != null) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => MeetAssist()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      child: SingleChildScrollView(
          child: Form(
        key: _formKey,
        child: Container(
            height: 500,
            width: 450,
            child: Column(children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 4.0),
                child: Align(
                  alignment: Alignment(1, -.0),
                  child: Container(
                    color: Color(0xFFFFFFFF),
                    child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Icon(Icons.close)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 190),
                child: Text(
                  'LOGIN',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w900,
                      fontSize: 16,
                      color: Color(0xFF3D3D71)),
                ),
              ),

              /*   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:25.0,top: 15),
                        child: Text(
                          'LOGIN',
                           style: TextStyle(
                               fontFamily: 'Montserrat',
                               fontWeight: FontWeight.w900,
                              fontSize: 16,
                              color: Color(0xFF3D3D71)),
                        ),
                      ),

                    IconButton(
                       icon: Icon(Icons.close),
                       color: Color(0xFF3D3D71),
                        onPressed: () {
                         Navigator.of(context).pop();
                        },
                    ),
                    ],
                  ),*/
              SizedBox(
                height: 10,
              ),
              Container(
                width: 260,
               // height: 50,
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  controller: emailController,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'email valid ';
                    }
                    return null;
                  },
                  //  onSaved: ,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFF8F8F8),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFD4D4D4)),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedBorder: OutlineInputBorder(
                        //  borderSide: BorderSide(color: Color(0xFFD4D4D4)),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                        child: Image(
                          image: AssetImage('assets/images/emailicon.png'),
                          height: 20,
                          width: 20,
                        ),
                      ),
                      hintText: 'e-mail/Phone number ',
                      hintStyle: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF3D3D71),
                          fontSize: 14)),
                  style: TextStyle(color: Color(0xFF3D3D71), fontSize: 18),
                  autofocus: false,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 260,
             //   height: 50,
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  controller: passwordController,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'password cannot be empty';
                    }
                    return null;
                  },
                  //  onSaved: ,
                  cursorColor: Color(0xFF3D3D71),
                  style: TextStyle(color: Color(0xFF3D3D71), fontSize: 18),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFF8F8F8),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFD4D4D4)),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedBorder: OutlineInputBorder(
                        //  borderSide: BorderSide(color: Color(0xFFD4D4D4)),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                        child: Image(
                          image: AssetImage('assets/images/password_icon.png'),
                          height: 20,
                          width: 20,
                        ),
                      ),
                      hintText: 'Password ',
                      hintStyle: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF3D3D71),
                          fontSize: 14)),
                  autofocus: false,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Row(children: <Widget>[
                  Expanded(
                    child: new Container(
                        margin: const EdgeInsets.only(left: 10.0, right: 15.0),
                        child: Divider(
                          color: Color(0xFF3D3D71),
                          height: 36,
                        )),
                  ),
                  Text(
                    "OR",
                    style: TextStyle(
                      fontSize: 21,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF3D3D71),
                    ),
                  ),
                  Expanded(
                    child: new Container(
                        margin: const EdgeInsets.only(left: 15.0, right: 10.0),
                        child: Divider(
                          color: Color(0xFF3D3D71),
                          height: 36,
                        )),
                  ),
                ]),
              ),
              Center(
                child: Text('LOGIN WITH',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w400,
                        fontSize: 11,
                        color: Color(0xFF3D3D71))),
              ),
              SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 115,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xFFECECEC),
                    ),
                    child: FlatButton(
                      onPressed: ()  {
                        _handleSignIn();
                       /* FirebaseAuth _auth =FirebaseAuth.instance;
                        await AuthService().signInWithGoogle().then((value) {
                          print(value);
                          Navigator.push(context,MaterialPageRoute(builder: (context)
                          => MeetAssist()));
                        });*/
                      },
                      child: Row(
                        children: <Widget>[
                          Image(
                            image: AssetImage('assets/images/google_logo.png'),
                            height: 25,
                            width: 20,
                          ),
                          Text(
                            'oogle',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w900,
                              color: Color(0xFF7F7F7F),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  Container(
                    width: 115,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xFF0571E6),
                    ),
                    child: FlatButton(
                   onPressed: () {
                        _login();
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(
                            'facebook',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: 265,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xFF3D3D71),
                ),
                child: FlatButton(
                  onPressed: () => {
                    if (_formKey.currentState.validate())
                      {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => MeetAssist())),
                      }
                    else
                      {print("plase provide")}
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      //  Image.asset('assets/images/trackflight.png',
                      //   width: 0, height: 0),
                      Text(
                        'LOG IN',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 110.0,
                ),
                child: FlatButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return ForgotPassword();
                        });
                  },
                  child: Text(
                    'Forgot Password ?',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0xFF000000)),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Signup();
                      });
                },
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: "Don't have an account ?",
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0xFF000000),
                      ),
                    ),
                    TextSpan(
                      text: " Click Here",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline,
                        color: Color(0xFF3D3D71),
                      ),
                    ),
                  ]),
                ),
              ),

              /*   Row(
                       // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left:15.0,),
                            child: Text(
                              'Dont have an account?',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w400,fontSize: 13),
                            ),
                          ),
                          FlatButton(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Signup();
                                  });},
                            child: Text('Click Here',
                              style: TextStyle(
                                fontSize: 13,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.underline,
                                color: Color(0xFF3D3D71),
                              ),
                            ),
                          ),

                        ],
                      ),*/
            ])),
      )),
    );
  }
}
