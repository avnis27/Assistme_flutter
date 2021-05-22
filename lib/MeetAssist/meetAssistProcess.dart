import 'package:assistme/BookingServices/cartDetails.dart';
import 'package:assistme/HomePage/HomeScreen.dart';
import 'package:assistme/MainScreen/AfterLoginLandingScreen.dart';
import 'package:assistme/MainScreen/LandingPage.dart';
import 'package:assistme/Setting/settingPage.dart';
import 'package:assistme/WackUpCall/wackUpcallfrom.dart';
import 'package:assistme/WebCheckIn/webcheckin.dart';
import 'package:flutter/material.dart';

import '../paymentDetails.dart';

class MeetAssistProcess extends StatefulWidget {
  @override
  _MeetAssistProcess createState() => _MeetAssistProcess();
}

class _MeetAssistProcess extends State<MeetAssistProcess> {
  final _formKey = GlobalKey<FormState>();
  final flightNoController = TextEditingController();
  final pnrNoController = TextEditingController();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final ageController = TextEditingController();

  String datatoChange = 'Rs.600';

  int _valueplan = 6;
  int _valueplan2 = 15;

  void changedata() {
    setState(() {
      datatoChange = 'Rs.1500';
    });
  }

  int _value = 0;
  bool _on = false;

  ///switch
  bool isSwitched = true;

  /// switch

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF222244),
      appBar: new AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 5,
              ),
              Icon(Icons.arrow_back),
              CircleAvatar(
                maxRadius: 13,
                minRadius: 13,
                child: Image.asset(
                  'assets/images/usericon.png',
                ),
              ),
            ],
          ),
        ),
        titleSpacing: 10,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'User Name',
              style: TextStyle(
                fontSize: 10,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              '9999999999',
              style: TextStyle(
                fontSize: 9,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        ),

        elevation: 1,
        // centerTitle: true,
        backgroundColor: Color(0xFF3D3D71),

        /*title: Image(
          image:
          AssetImage('assets/images/qassist_logo.png',),
           width: 100,
           fit: BoxFit.contain,
        ),
         // fit: BoxFit.contain,
        //),*/
        actions: <Widget>[
          Row(
            children: [
              InkWell(
                  child: Image.asset(
                'assets/images/notibellicon.png',
              )),
              SizedBox(
                width: 20,
              ),
              InkWell(
                  child: Image.asset(
                'assets/images/chaticon.png',
              )),
              SizedBox(
                width: 20,
              ),
              InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CartDetails()));
                  },
                  child: Image.asset(
                    'assets/images/carttwoicon.png',
                  )),
              IconButton(
                icon: Icon(
                  Icons.more_vert,
                  color: Color(0xFFFD8A0D),
                ),
                onPressed: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()))
                },
                //debugPrint("item Selected"),
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          key: _formKey,
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Text(
              'Chhatrapati Shivaji International\nAirport (T-2) (Mumbai)',
              //textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 100),
              child: Text(
                'Arrival Service (03-02-2021)',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 140,
                  height: 50,
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    //obscureText: true,
                    controller: flightNoController,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter flight No';
                      }
                      return null;
                    },
                    cursorColor: Color(0xFFFFFFFF),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFF3D3D71),
                      //   hoverColor: Color(0xFF3D3D71),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF3D3D71)),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF3D3D71)),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                        child: Image(
                          image: AssetImage('assets/images/nameicon.png'),
                        ),
                      ),
                      hintText: 'Flight No.',
                      hintStyle: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 11,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w400,
                      ),
                      errorStyle: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 6,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    autofocus: false,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 140,
                  height: 50,
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    //obscureText: true,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'password cannot be empty';
                      }
                      return null;
                    },
                    cursorColor: Color(0xFFFFFFFF),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFF3D3D71),
                      // hoverColor: Color(0xFF3D3D71),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF3D3D71)),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF3D3D71)),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                        child: Image(
                          image: AssetImage('assets/images/nameicon.png'),
                        ),
                      ),
                      hintText: 'PNR No. ',
                      hintStyle: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 11,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w400,
                      ),
                      errorStyle: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 6,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    autofocus: false,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              width: 290,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xFF3d3D71)),
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 10,
                  ),
                  Image(
                    image: AssetImage('assets/images/fromicon.png'),
                    height: 18,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'No. of Porter Required',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_drop_down,
                    color: Color(0xFFFD8A0D),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 20,
                    width: 20,
                    color: Color(0xFF3d3d71),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 12,
                    )),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Guest Details (If Required)',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  width: 40,
                ),
                Switch(
                  value: isSwitched,
                  onChanged: (value) {
                    setState(() {
                      isSwitched = value;
                    });
                  },
                  activeTrackColor: Color(0xFFFFffff),
                  activeColor: Color(0xFFFD8A0D),
                  inactiveThumbColor: Color(0xffFFFFFF),
                  inactiveTrackColor: Color(0xFFD9D5D5),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Additional Information',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  width: 100,
                ),
                Text(
                  'For Me',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 140,
                  height: 50,
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    //obscureText: true,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'password cannot be empty';
                      }
                      return null;
                    },
                    cursorColor: Color(0xFFFFFFFF),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                    ),
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFF3D3D71),
                        //   hoverColor: Color(0xFF3D3D71),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3D3D71)),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3D3D71)),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        prefixIcon: Padding(
                          padding:
                              const EdgeInsets.only(top: 15.0, bottom: 15.0),
                          child: Image(
                            image: AssetImage('assets/images/nameicon.png'),
                          ),
                        ),
                        hintText: 'First Name',
                        hintStyle: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 10,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400,
                        )),
                    autofocus: false,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 140,
                  height: 50,
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    //obscureText: true,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'password cannot be empty';
                      }
                      return null;
                    },
                    cursorColor: Color(0xFFFFFFFF),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                    ),
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFF3D3D71),
                        // hoverColor: Color(0xFF3D3D71),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3D3D71)),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3D3D71)),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        prefixIcon: Padding(
                          padding:
                              const EdgeInsets.only(top: 15.0, bottom: 15.0),
                          child: Image(
                            image: AssetImage('assets/images/nameicon.png'),
                          ),
                        ),
                        hintText: 'Last Name',
                        hintStyle: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 10,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400,
                        )),
                    autofocus: false,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 140,
                  height: 50,
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    //obscureText: true,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'password cannot be empty';
                      }
                      return null;
                    },
                    cursorColor: Color(0xFFFFFFFF),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                    ),
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFF3D3D71),
                        //   hoverColor: Color(0xFF3D3D71),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3D3D71)),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3D3D71)),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        prefixIcon: Padding(
                          padding:
                              const EdgeInsets.only(top: 15.0, bottom: 15.0),
                          child: Image(
                            image: AssetImage('assets/images/adrecticon.png'),
                          ),
                        ),
                        hintText: 'Email',
                        hintStyle: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 15,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400,
                        )),
                    autofocus: false,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 140,
                  height: 50,
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    //obscureText: true,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'password cannot be empty';
                      }
                      return null;
                    },
                    cursorColor: Color(0xFFFFFFFF),
                    // textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                    ),
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFF3D3D71),
                        // hoverColor: Color(0xFF3D3D71),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3D3D71)),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3D3D71)),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        prefixIcon: Padding(
                          padding:
                              const EdgeInsets.only(top: 15.0, bottom: 15.0),
                          //child: Image(
                          // image:
                          //  AssetImage('assets/images/nameicon.png'),
                          //),
                        ),
                        hintText: 'Age*',
                        hintStyle: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 15,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400,
                        )),
                    autofocus: false,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              //height: 200,
              width: 400,
              decoration: BoxDecoration(color: Color(0xFF3D3D71)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 220.0),
                    child: IconButton(
                      icon: Icon(
                        Icons.error_outline,
                        color: Color(0xFFFD8A0D),
                      ),
                      onPressed: () => {},
                      //debugPrint("item Selected"),
                    ),
                  ),
                  Container(
                    width: 270,
                    // height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Color(0xFFF8F8F8)),
                    child: ExpansionTile(
                      title: Text(
                        'Select Plan',
                        style: TextStyle(
                          color: Color(0xFFFD8A0D),
                          fontSize: 12,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      trailing: Icon(
                        Icons.arrow_drop_down,
                        color: Color(0xFFFD8A0D),
                      ),
                      children: <Widget>[
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () => {
                                setState(() => _value = 0),
                                //changedata(),
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return Basic();
                                    })
                              },
                              //changedata(),

                              child: Container(
                                width: 280,
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  // color: Color(0xFFF5F5F5)
                                  color: _value == 0
                                      ? Color(0xFF3D3D71)
                                      : Color(0xFFF5F5F5),
                                ),
                                // color: _value == 0 ? Color(0xFFF5F5F5) :  Color(0xFF3D3D71),

                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Text(
                                    'Basic',
                                    style: TextStyle(
                                      color: Color(0xFFFD8A0D),
                                      fontSize: 12,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () => {
                                setState(() => _value = 1),
                                changedata(),
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return Basic();
                                    })
                              },
                              child: Container(
                                width: 280,
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  //color: Color(0xFFF5F5F5)
                                  color: _value == 1
                                      ? Color(0xFF3D3D71)
                                      : Color(0xFFF5F5F5),
                                ),
                                //  color: _value == 1 ? Color(0xFFF5F5F5) :  Color(0xFF3D3D71),
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Text(
                                    'Premium',
                                    style: TextStyle(
                                      color: Color(0xFFFD8A0D),
                                      fontSize: 12,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: 140,
              height: 50,
              decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFFFFFFF)),
                  borderRadius: BorderRadius.circular(8)),
              child: Padding(
                padding: const EdgeInsets.all(9.0),
                child: Text(
                  '$datatoChange',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            /*  Container(
              width: 140,
              height: 50,
              child: TextFormField(
                cursorColor: Color(0xFFFFFFFF),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                ),
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFFFFFFF)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFFFFFFF)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFFFFFFF)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    labelText: 'TOTAL AMOUNT',
                    labelStyle: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 12,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                    ),
                    hintText: '6:00',
                    hintStyle: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 22,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                    ),
                    contentPadding:
                        EdgeInsets.only(bottom: 10, top: 10, left: 15)),
              ),
            ),*/
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 130,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Color(0xFF3D3D71),
                  ),
                  child: FlatButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => AfterLooginLandingPage()),
                      );
                    },
                    child: Text(
                      'ADD TO CART',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    //  color: Color(0xFF9F9F9F),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  width: 130,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Color(0xFF3D3D71),
                  ),
                  child: FlatButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => PaymentDetails()),
                      );
                    },
                    child: Text('PROCEED',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                        )),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(right: 8.0, left: 8.0),
        child: Container(
          child: ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15)),
            child: Container(
              height: 60,
              color: Color(0xFF3D3D71),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AfterLooginLandingPage()));
                    },
                    child: Container(
                        decoration: BoxDecoration(
                          // borderRadius: BorderRadius.circular(20),
                          shape: BoxShape.circle,
                          color: Color(0xFFFD8A0D),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(7.0),
                          //child: Image(image: AssetImage('assets/images/home.png',),),
                          child: Image.asset(
                            'assets/images/home.png',
                          ),
                        )),
                  ),
                  GestureDetector(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return WebCheckIN();
                          });
                    },
                    child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          // borderRadius: BorderRadius.circular(20),
                          color: Color(0xFFFD8A0D),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Image.asset(
                            'assets/images/checkbutton.png',
                          ),
                        )),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WackUpCall()));
                    },
                    child: Container(
                        decoration: BoxDecoration(
                          //borderRadius: BorderRadius.circular(20),
                          shape: BoxShape.circle,
                          color: Color(0xFFFD8A0D),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Image.asset(
                            'assets/images/wakeupbottom.png',
                          ),
                        )),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Setting()));
                    },
                    child: Container(
                        decoration: BoxDecoration(
                          // borderRadius: BorderRadius.circular(20),
                          shape: BoxShape.circle,
                          color: Color(0xFFFD8A0D),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Image.asset(
                            'assets/images/settingsbutton.png',
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Basic extends StatefulWidget {
  @override
  _BasicState createState() => _BasicState();
}

class _BasicState extends State<Basic> {
  bool _rememberMeFlag = false;
  bool rememberMe = false;
  bool showErrorMessage = false;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      child: Container(
        height: 350,
        child: Column(
          children: [
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
            SizedBox(
              height: 10,
            ),
            Text(
              'INCLUSIONS',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
                color: Color(0xFF3D3D71),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 5),
              child: Text(
                'Dedicated Representative will receive passenger at aerobridge / bus gate \n'
                'Collect luggage (02 pcs) with trolley \n'
                'Assistance from aerobridge / bus gate till parking area or receiving party\n'
                'Assistance till car parking or receiving party ',
                // textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 10,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF3D3D71),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: <Widget>[
                Checkbox(
                  checkColor: Colors.white,
                  activeColor: Color(0xFF3d3d71),
                 // value: _rememberMeFlag,
                 // onChanged: (value) => setState(() {
                   // _rememberMeFlag = !_rememberMeFlag;
                 // }),
                    value: rememberMe,
                    onChanged: (newValue) {
                      setState(() => rememberMe = newValue);
                    }
                ),
                Text(
                  'I Agree Terms & Conditions',
                  style: TextStyle(
                    fontSize: 10,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF3D3D71),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: "Note: ",
                    style: TextStyle(
                      fontSize: 10,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF3D3D71),
                    ),
                  ),
                  TextSpan(
                    text:
                        "To avail seamless Porter service, please confirm your location to Porter Supervisor whose details will be shared with the booking confirmation.",
                    style: TextStyle(
                      fontSize: 10,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF3D3D71),
                    ),
                  ),
                ]),
              ),
            ),
           /* FlatButton(
                onPressed: _rememberMeFlag ?
                  Navigator.of(context).pop(),

                child: Text(
                  "OK",
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF3D3D71),
                  ),
                ))*/
        SizedBox(
          height: 10,
        ),
            showErrorMessage ?
            Container(

                    child: Text('Please accept the terms and conditions to proceed...',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                      fontSize: 10,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700,
                      color: Colors.red,
                    ),)

            ) : Container(),
            RaisedButton(
                child: Text('Ok' ,style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF3D3D71),
                ),),
                onPressed: (){
                  // for your form validation
                  if(rememberMe != true) {
                    setState(() => showErrorMessage = true);
                  }
                  else if(rememberMe!= false){
                    setState(() {
                      Navigator.of(context).pop();
                    });
                  }else{
                    setState(() => showErrorMessage = false);
                  }
                }

            )

          ],
        ),
      ),
    );
  }
}
