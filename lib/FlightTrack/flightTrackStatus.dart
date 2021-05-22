import 'package:assistme/BookingServices/cartDetails.dart';
import 'package:assistme/HomePage/HomeScreen.dart';
import 'package:assistme/MainScreen/AfterLoginLandingScreen.dart';
import 'package:assistme/Setting/settingPage.dart';
import 'package:assistme/WackUpCall/wackUpcallfrom.dart';
import 'package:assistme/WebCheckIn/webcheckin.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class FlightStatus extends StatefulWidget {
  @override
  _FlightStatus createState() => _FlightStatus();
}

class _FlightStatus extends State<FlightStatus> {
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
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only( top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'FLIGHT',
                    style: TextStyle(
                      fontSize: 28,
                      // color: Color(0xFF3D3D71),
                      color: Color(0xFFFD8A0D),
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Image(
                    image: AssetImage('assets/images/fromicon.png'),
                  ),
                  Text(
                    'TRACKING',
                    style: TextStyle(
                      fontSize: 28,
                      // color: Color(0xFF3D3D71),
                      color: Color(0xFFFD8A0D),
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18.0),
              child: Container(
                height: 220,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xFF3D3D71),
                ),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text(
                          'Flight Date',
                          style: TextStyle(
                            fontSize: 10,

                            // color: Color(0xFF3D3D71),

                            color: Color(0xFFFD8A0D),

                            fontFamily: 'Montserrat',

                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'New Delhi',
                              style: TextStyle(
                                fontSize: 10,

                                // color: Color(0xFF3D3D71),

                                color: Color(0xFFFD8A0D),

                                fontFamily: 'Montserrat',

                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                'Mumbai',
                                style: TextStyle(
                                  fontSize: 10,

                                  // color: Color(0xFF3D3D71),

                                  color: Color(0xFFFD8A0D),

                                  fontFamily: 'Montserrat',

                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 140.0),
                      child: Text(
                        'Thursday,28 2021',
                        style: TextStyle(
                          fontSize: 12,

                          // color: Color(0xFF3D3D71),

                          color: Color(0xFFFD8A0D),

                          fontFamily: 'Montserrat',

                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Image(
                              image: AssetImage('assets/images/fromicon.png'),
                              height: 25,
                            ),
                            Text(
                              'ORIGIN',
                              style: TextStyle(
                                fontSize: 10,

                                // color: Color(0xFF3D3D71),

                                color: Color(0xFFFD8A0D),

                                fontFamily: 'Montserrat',

                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Image(
                              image: AssetImage('assets/images/fromicon.png'),
                              height: 25,
                            ),
                            Text(
                              'DESTINATION',
                              style: TextStyle(
                                fontSize: 10,

                                // color: Color(0xFF3D3D71),

                                color: Color(0xFFFD8A0D),

                                fontFamily: 'Montserrat',

                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text(
                          'Delhi (DEL)',
                          style: TextStyle(
                            fontSize: 12,

                            // color: Color(0xFF3D3D71),

                            color: Color(0xFFFD8A0D),

                            fontFamily: 'Montserrat',

                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'MUMBAI (BOM)',
                          style: TextStyle(
                            fontSize: 12,

                            // color: Color(0xFF3D3D71),

                            color: Color(0xFFFD8A0D),

                            fontFamily: 'Montserrat',

                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                           // Image(
                             // image: AssetImage('assets/images/fromicon.png'),
                             // height: 25,
                            //),
                            IconButton(
                              icon: Icon(
                                Icons.wb_cloudy,
                                color: Color(0xFFFD8A0D),
                              ),
                              onPressed: () => {},
                              //debugPrint("item Selected"),
                            ),
                            Column(
                              children: <Widget>[
                                Text(
                                  '25O',
                                  style: TextStyle(
                                    fontSize: 10,

                                    // color: Color(0xFF3D3D71),

                                    color: Color(0xFFFD8A0D),

                                    fontFamily: 'Montserrat',

                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  'Partly Cloud',
                                  style: TextStyle(
                                    fontSize: 8,

                                    // color: Color(0xFF3D3D71),

                                    color: Color(0xFFFD8A0D),

                                    fontFamily: 'Montserrat',

                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        //SizedBox(width: 70,),
                        Row(
                          children: <Widget>[
                          //  Image(
                            //  image: AssetImage('assets/images/fromicon.png'),
                             // height: 25,
                            //),
                            IconButton(
                              icon: Icon(
                                Icons.wb_cloudy,
                                color: Color(0xFFFD8A0D),
                              ),
                              onPressed: () => {},
                              //debugPrint("item Selected"),
                            ),
                            Column(
                              children: <Widget>[
                                Text(
                                  '25O',
                                  style: TextStyle(
                                    fontSize: 10,

                                    //color: Color(0xFFFFFFFF),

                                    color: Color(0xFFFD8A0D),

                                    fontFamily: 'Montserrat',

                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  'Partly Cloud',
                                  style: TextStyle(
                                    fontSize: 8,

                                    //color: Color(0xFFFFFFFF),

                                     color: Color(0xFFFD8A0D),

                                    fontFamily: 'Montserrat',

                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text(
                          'Delhi-Indra Gandhi \nInternational Airport',
                          style: TextStyle(
                            fontSize: 10,

                           // color: Color(0xFFFFFFFF),

                          color: Color(0xFFFD8A0D),

                            fontFamily: 'Montserrat',

                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          'Mumbai-chhatrapati \nShivaji maharaj airport',
                          style: TextStyle(
                            fontSize: 10,

                              // color: Color(0xFFFFFFFF),

                         color: Color(0xFFFD8A0D),
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18.0),
              child: Container(
                height: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xFFF8F8F8),
                  border: Border.all(color: Color(0xFFD4D4D4), width: 2),
                ),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.only(right:138.0),
                      child: Text(
                        'Flight No - UK995',
                        style: TextStyle(
                          fontSize: 12,
                          // color: Color(0xFF3D3D71),
                          color: Color(0xFF3D3D71),
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.only(left:35,right: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Origin',
                            style: TextStyle(
                              fontSize: 12,
                              // color: Color(0xFF3D3D71),
                              color: Color(0xFF3D3D71),
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'Destination',
                            style: TextStyle(
                              fontSize: 12,
                              // color: Color(0xFF3D3D71),
                              color: Color(0xFF3D3D71),
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.only(left:35,right: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'DELHI (DEL)',
                            style: TextStyle(
                              fontSize: 10,
                              // color: Color(0xFF3D3D71),
                              color: Color(0xFF3D3D71),
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            'MUMBAI (BOM)',
                            style: TextStyle(
                              fontSize: 10,
                              // color: Color(0xFF3D3D71),
                              color: Color(0xFF3D3D71),
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                   SizedBox(
                     height: 20,
                   ),
                    Padding(
                      padding: const EdgeInsets.only(right:150.0),
                      child: Text(
                        'Expected\nDeparture Date',
                        style: TextStyle(
                          fontSize: 12,
                          // color: Color(0xFF3D3D71),
                          color: Color(0xFF3D3D71),
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right:125.0,top: 5),
                      child: Text(
                        'Thu,28 Jan 2021 10:31 PM',
                        style: TextStyle(
                          fontSize: 10,
                          // color: Color(0xFF3D3D71),
                          color: Color(0xFF3D3D71),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
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
