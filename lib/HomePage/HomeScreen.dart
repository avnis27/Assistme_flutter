import 'package:assistme/BookingServices/bookingservicesone.dart';
import 'package:assistme/BookingServices/bookingservicestwo.dart';
import 'package:assistme/BookingServices/cartDetails.dart';
import 'package:assistme/HomePage/ContactUs.dart';
import 'package:assistme/HomePage/FAQ.dart';
import 'package:assistme/HomePage/PrivacyPolicy.dart';
import 'package:assistme/HomePage/ReferAndEarn.dart';
import 'package:assistme/HomePage/TermsAndConditions.dart';
import 'package:assistme/HomePage/logout.dart';
import 'package:assistme/MainScreen/AfterLoginLandingScreen.dart';
import 'package:assistme/MainScreen/LandingPage.dart';
import 'package:assistme/Setting/settingPage.dart';
import 'package:assistme/WackUpCall/wackUpcallfrom.dart';
import 'package:assistme/WebCheckIn/webcheckin.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  bool _hasBeenPressed = false;
  int countFavirote= 15;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF222244),
      appBar: new AppBar(
        leading:  GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(width: 5,),
              Icon(Icons.arrow_back),
              CircleAvatar(
                maxRadius: 13,
                minRadius: 13,
                child: Image.asset(
                  'assets/images/usericon.png',

                ),
              ),],
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
              Badge(
                padding: EdgeInsets.all(3),
                badgeContent: Text('$countFavirote',
                  style:TextStyle(
                      fontSize: 8,
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600),),
                child:  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => CartDetails()));},
                    child: Image.asset(
                        'assets/images/carttwoicon.png'
                    )),),
              IconButton(
                icon: Icon(
                  Icons.more_vert,
                  color: Color(0xFFFD8A0D),
                ),
                onPressed: () => {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()))
                },
                //debugPrint("item Selected"),
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Text(
                'Q-ASSIST',
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w800,
                    //color: Color(0xFF3D3D71)
                    color: Colors.white),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                width: 290,
                height: 45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Color(0xFFF5F5F5)),
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AfterLooginLandingPage()));
                  },
                  child: Text(
                    'HOME',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF3D3D71)
                        // color: Colors.white
                        ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 290,
                height: 45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Color(0xFFF5F5F5)),
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => BookingOne()));
                  },
                  child: Text(
                    'MY BOOKINGS',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF3D3D71)
                        // color: Colors.white
                        ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 290,
                height: 45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Color(0xFFF5F5F5)),
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ReferAndEarn()));
                  },
                  child: Text(
                    'ELITE PRIVILAGE',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF3D3D71)
                        // color: Colors.white
                        ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 290,
                height: 45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Color(0xFFF5F5F5)),
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ContactUS()));
                  },
                  child: Text(
                    'CONTACT US',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF3D3D71)
                        // color: Colors.white
                        ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 290,
                height: 45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Color(0xFFF5F5F5)),
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Faq()));
                  },
                  child: Text(
                    'FAQ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF3D3D71)
                        // color: Colors.white
                        ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 290,
                height: 45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Color(0xFFF5F5F5)),
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PrivacyPolicy()));
                  },
                  child: Text(
                    'PRIVACY POLICY',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF3D3D71)
                        // color: Colors.white
                        ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 290,
                height: 45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Color(0xFFF5F5F5)),
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => TermsAndConditions()
                        ));
                  },
                  child: Text(
                    'TERMS & CONDITIONS',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF3D3D71)
                        // color: Colors.white
                        ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 290,
                height: 45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Color(0xFFF5F5F5)),
                child: FlatButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return Logout();
                        });
                  },
                  child: Text(
                    'LOG OUT',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF3D3D71)
                      // color: Colors.white
                    ),
                  ),
                ),
              ),
            ],
          ),
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
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> AfterLooginLandingPage()));
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
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> WackUpCall()));
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
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Setting()));
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
