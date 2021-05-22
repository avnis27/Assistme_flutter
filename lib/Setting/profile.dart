import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _Profile createState() => _Profile();
}

class _Profile extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      child: Container(
        height: 370,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
         // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

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
              padding: const EdgeInsets.only(right: 165, top: 5),
              child: Text(
                'PROFILE',
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
              width: 250,
              height: 50,
              child: TextFormField(
                keyboardType: TextInputType.text,
                obscureText: true,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'password cannot be empty';
                  }
                  return null;
                },
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
                      borderSide: BorderSide(color: Color(0xFFD4D4D4)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                      child:  Image(
                        image: AssetImage('assets/images/nameicon.png'),
                        height: 20,
                        width: 20,
                      ),
                    ),
                    hintText: 'First Name',
                    hintStyle: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF3D3D71),
                    )),
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
                obscureText: true,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'password cannot be empty';
                  }
                  return null;
                },
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
                      borderSide: BorderSide(color: Color(0xFFD4D4D4)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                      child:  Image(
                        image: AssetImage('assets/images/nameicon.png'),
                        height: 20,
                        width: 20,
                      ),
                    ),
                    hintText: 'Last Name',
                    hintStyle: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF3D3D71),
                    )),
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
                obscureText: true,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'password cannot be empty';
                  }
                  return null;
                },
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
                      borderSide: BorderSide(color: Color(0xFFD4D4D4)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                      child:  Image(
                        image: AssetImage('assets/images/adrecticon.png'),
                        height: 20,
                        width: 20,
                      ),
                    ),
                    hintText: 'E-mail',
                    hintStyle: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF3D3D71),
                    )),
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
                obscureText: true,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'password cannot be empty';
                  }
                  return null;
                },
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
                      borderSide: BorderSide(color: Color(0xFFD4D4D4)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                      child:  Image(
                        image: AssetImage('assets/images/mobile_icon.png'),
                        height: 20,
                        width: 20,
                      ),
                    ),
                    hintText: 'Mobile Number',
                    hintStyle: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF3D3D71),
                    )),
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
                onPressed: () {
                  //showDialog(
                  //context: context,
                  //builder: (BuildContext context) {
                  // return EnterOTP(;
                  // });
                },
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
