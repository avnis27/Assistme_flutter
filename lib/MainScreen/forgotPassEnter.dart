import 'package:flutter/material.dart';

class ForgotPassEnter extends StatefulWidget{
  @override
  _ForgotPassEnterState createState() => _ForgotPassEnterState();
}

class _ForgotPassEnterState extends State<ForgotPassEnter> {
  final _formKey = GlobalKey<FormState>();
  final enterOTPController = TextEditingController();
  final enterNewPassController= TextEditingController();
  final conformNewPassController= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape:  RoundedRectangleBorder (
          borderRadius: BorderRadius.circular(5.0)
      ),
      child: Container(
        height: 310,
        child: Column(
          key: _formKey,
          children: <Widget>[

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
              padding: const EdgeInsets.only(right:65,top: 5),
              child: Text(
                'FORGOT PASSWORD',
                //  textAlign: TextAlign.right,
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w900,
                    fontSize: 16,
                    color: Color(0xFF3D3D71)),
              ),
            ),


            SizedBox(
              height: 15,
            ),
            Container(
              width: 250,
              height: 50,
              child: TextFormField(
                keyboardType: TextInputType.text,
                obscureText: true,
                controller: enterOTPController,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'enter valid OTP';
                  }
                  return null;
                },
                cursorColor: Color(0xFF3D3D71),
                style: TextStyle(color: Color(0xFF3D3D71),fontSize: 18),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFF8F8F8),
                    border: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Color(0xFFD4D4D4)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Color(0xFFD4D4D4)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(
                          top: 15.0, bottom: 15.0),
                      child: Image(
                        image:
                        AssetImage('assets/images/enterotpicon.png')
                        ,height: 25,
                      ),
                    ),
                    hintText: 'Enter OTP',
                    hintStyle: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF3D3D71), )),
                autofocus: false,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: 250,
              height: 50,
              child: TextFormField(
                keyboardType: TextInputType.text,
                controller: enterNewPassController,
                obscureText: true,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Enter New Password';
                  }
                  return null;
                },
                cursorColor: Color(0xFF3D3D71),
                style: TextStyle(color: Color(0xFF3D3D71),fontSize: 18),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFF8F8F8),
                    border: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Color(0xFFD4D4D4)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Color(0xFFD4D4D4)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(
                          top: 15.0, bottom: 15.0),
                      child: Image(
                        image:
                        AssetImage('assets/images/password_icon.png')
                        ,height: 25,
                      ),
                    ),
                    hintText: ' Enter New Password',
                    hintStyle: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF3D3D71), )),
                autofocus: false,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: 250,
              height: 50,
              child: TextFormField(
                keyboardType: TextInputType.text,
                controller: conformNewPassController,
                obscureText: true,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'confirm new Password ';
                  }
                  return null;
                },
                cursorColor: Color(0xFF3D3D71),
                style: TextStyle(color: Color(0xFF3D3D71),fontSize: 18),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFF8F8F8),
                    border: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Color(0xFFD4D4D4)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Color(0xFFD4D4D4)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(
                          top: 15.0, bottom: 15.0),
                      child: Image(
                        image:
                        AssetImage('assets/images/password_icon.png')
                        ,height: 25,
                      ),
                    ),
                    hintText: ' Confirm New Password',
                    hintStyle: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF3D3D71), )),
                autofocus: false,
              ),
            ),

            SizedBox(
              height: 20,
            ),
            Container(
              width: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xFF3D3D71),
              ),
              child: FlatButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    //  Image.asset('assets/images/trackflight.png',
                    //   width: 0, height: 0),
                    Text(
                      'SUBMIT',
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
          ],
        ),
      ),
    );


  }
}