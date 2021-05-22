import 'package:assistme/MainScreen/registerPage.dart';
import 'package:flutter/material.dart';

import 'LandingPage.dart';

class Signup extends StatefulWidget {
  @override
  _SignupPage createState() => _SignupPage();
}

class _SignupPage extends State<Signup> {
  @override
  Widget build(BuildContext context) {

    return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        child: Container(
            height: 250,
            //width: 400,
            child: Column(children: [

           /*   Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:25.0,top: 15),
                    child: Text(
                      'SIGNUP',
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
              Padding(
                padding: const EdgeInsets.only(right:4.0),
                child: Align(
                  alignment: Alignment(1,-.0),
                  child: Container(
                    color: Color(0xFFFFFFFF),
                    child: GestureDetector
                      (onTap: (){
                      Navigator.of(context).pop();
                    },
                        child: Icon(Icons.close)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right:150,top: 5),
                child: Text(
                  'SIGNUP',
                  //  textAlign: TextAlign.right,
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w900,
                      fontSize: 16,
                      color: Color(0xFF3D3D71)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 240,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xFFECECEC),
                ),
                child: FlatButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image(
                        image:
                        AssetImage('assets/images/google_logo.png'),
                        height: 35,
                        width: 30,
                      ),
                      Text(
                        'Signup with Google',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,

                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 240,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xFF056FE5),
                ),
                child: FlatButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image(
                        image:
                        AssetImage('assets/images/facebook_logo.png'),
                        height: 35,
                        width: 30,
                      ),
                      Text(
                        'Signup with Facebook',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 240,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xFFFF5E5E),
                ),
                child: FlatButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => Register()),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image(
                        image:
                        AssetImage('assets/images/email_logo.png'),
                        height: 35,
                        width: 30,
                      ),
                      Text(
                        'Signup with Email',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ])));
  }
}
