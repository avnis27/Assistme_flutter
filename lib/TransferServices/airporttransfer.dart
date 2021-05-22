import 'package:assistme/BookingServices/cartDetails.dart';
import 'package:assistme/HomePage/HomeScreen.dart';
import 'package:assistme/MainScreen/AfterLoginLandingScreen.dart';
import 'package:assistme/MainScreen/LandingPage.dart';
import 'package:assistme/Setting/settingPage.dart';
import 'package:assistme/WackUpCall/wackUpcallfrom.dart';
import 'package:assistme/WebCheckIn/webcheckin.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

import '../paymentDetails.dart';

class AirportTransfer extends StatefulWidget {
  @override
  _AirportTransfer createState() => _AirportTransfer();
}

class _AirportTransfer extends State<AirportTransfer> {
  bool _on = false;
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
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Text(
                  'AIRPORT TRANSFER',
                  style: TextStyle(
                      fontSize: 16,

                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w900,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 20,
                ),
                /*
                Container(
                  width: 290,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Color(0xFF3D3D71)),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      dropdownColor: Colors.deepOrange,
                      isExpanded: true,
                      // icon: Image.asset('assest/images/searchicon.png'),
                    ),
                  ),
                ),*/

                Container(
                  width: 290,
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
                    style: TextStyle( color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,),
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
                            image:
                            AssetImage('assets/images/searchicon.png'),
                          ),
                        ),
                        suffixIcon:  IconButton(
                          icon: Icon(
                            Icons.arrow_drop_down,
                            color: Color(0xFFFD8A0D),
                          ),
                          onPressed: () => {},
                          //debugPrint("item Selected"),
                        ),

                        hintText: 'Select City ',
                        hintStyle:
                        TextStyle(color: Color(0xFFFFFFFF),  fontSize: 15,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400,)),
                    autofocus: false,
                  ),
                ),


                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 215.0),
                  child: Text(
                    'From',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Container(
                  width: 290,
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
                    style: TextStyle( color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,),
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
                            image:
                                AssetImage('assets/images/presentlocation.png'),
                          ),
                        ),

                        hintText: 'Present Location ',
                        hintStyle:
                            TextStyle(color: Color(0xFFFFFFFF),  fontSize: 15,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,)),
                    autofocus: false,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 228.0),
                  child: Text(
                    'To',
                    style: TextStyle(color: Colors.white),
                  ),
                ),

                /*
                Container(
                  width: 290,
                  height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                   color: Color(0xFF3D3D71),
                ),
                  child: DropdownButtonHideUnderline(


                    child: DropdownButton(
                      //dropdownColor: Colors.deepOrange,
                      isExpanded: true,
                      hint: Text('Select City',style: TextStyle(color: Colors.white),),
                       icon:  Image(
                         image:
                         AssetImage('assets/images/searchicon.png'),
                       ),

                    ),
                  ),
                ),*/

                Container(
                  width: 290,
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
                    style: TextStyle( color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,),
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
                            image:
                            AssetImage('assets/images/searchicon.png'),
                          ),
                        ),
                        suffixIcon:  IconButton(
                          icon: Icon(
                            Icons.arrow_drop_down,
                            color: Color(0xFFFD8A0D),
                          ),
                          onPressed: () => {},
                          //debugPrint("item Selected"),
                        ),

                        hintText: 'To Airport ',
                        hintStyle:
                        TextStyle(color: Color(0xFFFFFFFF),  fontSize: 15,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400,)),
                    autofocus: false,
                  ),
                ),


                SizedBox(
                  height: 10,
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: SwitchListTile(
                    title: Text('For Me',style: TextStyle(color: Color(0xFFFFFFFF),  fontSize: 12,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,),),
                    value: _on,
                    activeTrackColor: Color(0xFFFFffff),
                    activeColor: Color(0xFFFD8A0D),
                    inactiveThumbColor:Color(0xffFFFFFF) ,
                    inactiveTrackColor: Color(0xFFD9D5D5),
                    onChanged: (value) => setState(() => _on = value),
                  ),
                ),
             /*   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'From Me',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 170,
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.toggle_on,
                          size: 35,
                          color: Color(0xFFFD8A0D),
                        ),
                        onPressed: () => {},
                        //debugPrint("item Selected"),
                      ),
                     // LiteRollingSwitch(),

                    ],
                  ),*/

               // SizedBox(
               //   height: 5,
               // ),
                Text(
                  'Please Select the For Me option if you are booking services for yourself',
                  style: TextStyle(color: Colors.white, fontSize: 9),
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
                          style: TextStyle( color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,),
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
                                padding: const EdgeInsets.only(
                                    top: 15.0, bottom: 15.0),
                                child: Image(
                                  image:
                                      AssetImage('assets/images/nameicon.png'),
                                ),
                              ),
                              hintText: 'First Name ',
                              hintStyle: TextStyle(
                                  color: Color(0xFFFFFFFF),  fontSize: 12,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,)),
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
                          style: TextStyle( color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,),
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
                                padding: const EdgeInsets.only(
                                    top: 15.0, bottom: 15.0),
                                child: Image(
                                  image:
                                      AssetImage('assets/images/nameicon.png'),
                                ),
                              ),
                              hintText: 'Last Name ',
                              hintStyle: TextStyle(
                                  color: Color(0xFFFFFFFF),  fontSize: 12,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,)),
                          autofocus: false,
                        ),
                      ),
                    ],
                  ),

                SizedBox(
                  height: 8,
                ),
               Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 140,
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
                          style: TextStyle( color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,),
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
                                padding: const EdgeInsets.only(
                                    top: 15.0, bottom: 15.0),
                                child: Image(
                                  image: AssetImage(
                                      'assets/images/adrecticon.png'),
                                ),
                              ),
                              hintText: 'Email-ID ',
                              hintStyle: TextStyle(
                                  color: Color(0xFFFFFFFF),  fontSize: 13,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,)),
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
                          keyboardType: TextInputType.number,
                          //obscureText: true,
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'password cannot be empty';
                            }
                            return null;
                          },
                          cursorColor: Color(0xFFFFFFFF),
                          style: TextStyle( color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,),
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
                                padding: const EdgeInsets.only(
                                    top: 15.0, bottom: 15.0),
                                child: Image(
                                  image: AssetImage(
                                      'assets/images/mobile_icon.png'),
                                ),
                              ),
                              hintText: 'Mobile No ',
                              hintStyle: TextStyle(
                                  color: Color(0xFFFFFFFF), fontSize: 13,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,)),
                          autofocus: false,
                        ),
                      ),
                    ],
                  ),

              SizedBox(
                height: 8,
              ),
                Container(
                  width: 290,
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
                    style: TextStyle( color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,),
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
                            image:
                            AssetImage('assets/images/servicesicon.png'),
                          ),
                        ),
                        hintText: 'Services ',
                        hintStyle:
                        TextStyle(color: Color(0xFFFFFFFF), fontSize: 15,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400,)),
                    autofocus: false,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                
                 Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Total Amount',style: TextStyle(color: Colors.white, fontSize: 15,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w400,),),
                      SizedBox(
                        width: 140,
                      ),
                      Text('20.00',style: TextStyle(color: Colors.white, fontSize: 15,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w400,),),

                    ],
                  ),

                SizedBox(
                  height: 15,
                ),
                 Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                     Container(
                          width: 130,
                          height: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: Color(0xFF9F9F9F),
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
                              style: TextStyle(color: Colors.white ,fontSize: 12,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,),
                            ),
                          //  color: Color(0xFF9F9F9F),
                          ),
                        ),

                    SizedBox(width: 25,),
                      Container(
                          width: 130,
                          height: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: Color(0xFFFD8A0D),
                          ),
                          child: FlatButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => PaymentDetails()),
                              );
                            },
                            child:
                            Text('PROCEED', style: TextStyle(color: Colors.white, fontSize: 12,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,)),

                          ),
                        ),

                    ],
                  ),
                SizedBox(
                  height: 30,
                )
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
