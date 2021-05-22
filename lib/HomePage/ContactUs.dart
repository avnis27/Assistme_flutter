import 'package:assistme/BookingServices/cartDetails.dart';
import 'package:assistme/MainScreen/AfterLoginLandingScreen.dart';
import 'package:assistme/Setting/settingPage.dart';
import 'package:assistme/WackUpCall/wackUpcallfrom.dart';
import 'package:assistme/WebCheckIn/webcheckin.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

import 'HomeScreen.dart';

class ContactUS extends StatelessWidget {
  int countFavirote= 15;
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
          child: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 160
              ),
              child:   Text(
              'Contact Details',
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w900,
                  color: Color(0xFFFFFFFF),
                decoration: TextDecoration.underline,
                  //lor: Colors.white),),
                  ),
            ),),
            SizedBox(
              height: 20,
            ),
            Container(
                height: 260,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xFF3d3d71),
                ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15,),

                child: Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        SizedBox(
                          height: 20,
                        ),
                        Icon(
                          Icons.location_on_outlined,
                          color: Color(0xFFFD8A0D),
                          size: 40,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Icon(
                          Icons.phone,
                          color: Color(0xFFFD8A0D),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Icon(
                          Icons.email_sharp,
                          color: Color(0xFFFD8A0D),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Icon(
                          Icons.public_outlined,
                          color: Color(0xFFFD8A0D),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: <Widget>[
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'ABC, BLOCK-1,PLACE,\nNEW DELHI, India',
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500,
                              color: Color(0xFFFFFFFF)),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          '+91-1234567890',
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500,
                              color: Color(0xFFFFFFFF)),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          'abcdefghij@gmail.com',
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500,
                              color: Color(0xFFFFFFFF)),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          ' www.airportporterservice.com',
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500,
                              color: Color(0xFFFFFFFF)),
                        ),
                      ],
                    ),
                  ],
                ))),
            Padding(
              padding: const EdgeInsets.only(right: 170,top: 25
              ),
              child: Text(
              'Contact Form',
              style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 16,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                  color: Color(0xFFFFFFFF)),
            ),
            ),
          SizedBox(
            height: 20,
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
                          borderSide:
                          BorderSide(color: Color(0xFF3D3D71)),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Color(0xFF3D3D71)),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      /*  prefixIcon: Padding(
                          padding: const EdgeInsets.only(
                              top: 15.0, bottom: 15.0),
                          child: Image(
                            image: AssetImage(
                                'assets/images/nameicon.png'),
                          ),
                        ),*/
                        labelText: 'Name:',
                        labelStyle: TextStyle(
                        color: Color(0xFFFFFFFF),
                    fontSize: 14,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                  ),
                        hintText: 'Enter full name',
                        hintStyle: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 13,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400,
                        )),
                    autofocus: false,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  width: 140,
                  height: 50,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
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
                          borderSide:
                          BorderSide(color: Color(0xFF3D3D71)),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Color(0xFF3D3D71)),
                          borderRadius: BorderRadius.circular(8),
                        ),
                       /* prefixIcon: Padding(
                          padding: const EdgeInsets.only(
                              top: 15.0, bottom: 15.0),
                          child: Image(
                            image: AssetImage(
                                'assets/images/mobile_icon.png'),
                          ),
                        ),*/
                      labelText: 'Phone Number:',
                        labelStyle: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 14,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400,
                        ),
                        hintText: 'XXXX-XXXXX',
                        hintStyle: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 12,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400,
                        )),
                    autofocus: false,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: 300,
              height: 50,
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
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
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF3D3D71)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF3D3D71)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    /*prefixIcon: Padding(
                      padding: const EdgeInsets.only(
                          top: 15.0, bottom: 15.0),
                      child: Image(
                        image:
                        AssetImage('assets/images/adrecticon.png'),
                        height: 25,
                      ),
                    ),*/
                    labelText: 'Email:',
                    labelStyle: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 14,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                    ),

                    hintText: 'abc@xyz.com ',
                    hintStyle: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFffffff),
                    )),
                autofocus: false,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: 300,
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
                minLines: 4,
                maxLines: 5,
                autocorrect: false,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFF3D3D71),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF3D3D71)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF3D3D71)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                   /* prefixIcon: Padding(
                      padding: const EdgeInsets.only(bottom: 65.0),
                      child: Image(
                        image:
                        AssetImage('assets/images/massageicon.png'),
                        height: 25,
                      ),
                    ),

                    labelText: 'Massage:',
                    labelStyle: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 14,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                    ),*/
                    hintText: ' Enter a massage',
                    hintStyle: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFffffff),
                    )),
                autofocus: false,
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(right: 170,top: 15
              ),
              child: Container(
              width: 130,
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Color(0xFF3D3D71),
              ),
              child: FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();

                },
                child: Text(
                  'Send Massage',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                //  color: Color(0xFF9F9F9F),
              ),
            ),),

SizedBox(
  height:
  25,),
            /* child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                    //  Image.asset(
                      //'assets/images/contactlocationicon.png',
                         // width: 0,
                         // height: 0),
                          Icon(Icons.location_on_outlined,color: Color(0xFFFD8A0D),size: 40,),
                          SizedBox(
                            width: 40,
                          ),
                          Text('ABC, BLOCK-1,PLACE,\n NEW DELHI, India', style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                              color: Color(0xFFFFFFFF)
                      //lor: Colors.white),),
                ),),],),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                         // Image.asset(
                             // 'assets/images/mobile_icon.png',
                             // width: 0,
                            //  height: 0),
                          Icon(Icons.phone,color: Color(0xFFFD8A0D),),
                          SizedBox(
                            width: 65,
                          ),
                          Text('+91-1234567890', style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500,
                              color: Color(0xFFFFFFFF)
                            //lor: Colors.white),),
                          ),),],),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                         // Image.asset(
                             // 'assets/images/contactmailicon.png',
                             // width: 0,
                            //  height: 0),

                          Icon(Icons.email_sharp,color: Color(0xFFFD8A0D),),
                          SizedBox(
                            width: 10,
                          ),
                          Text('abcdefghij@gmail.com', style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500,
                              color: Color(0xFFFFFFFF)
                            //lor: Colors.white),),
                          ),),],),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          // Image.asset(
                          // 'assets/images/contactmailicon.png',
                          // width: 0,
                          //  height: 0),

                          Icon(Icons.public_outlined,color: Color(0xFFFD8A0D),),
                          SizedBox(
                            width: 10,
                          ),
                          Text(' www.airportporterservice.com', style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500,
                              color: Color(0xFFFFFFFF)
                            //lor: Colors.white),),
                          ),),],),


                    ],
                  ),*/
          ],
        ),
      )),
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
