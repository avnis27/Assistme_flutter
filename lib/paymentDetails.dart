import 'package:assistme/HomePage/HomeScreen.dart';
import 'package:assistme/MainScreen/AfterLoginLandingScreen.dart';
import 'package:assistme/MainScreen/LandingPage.dart';

import 'package:flutter/material.dart';

import 'BookingServices/cartDetails.dart';
import 'Setting/settingPage.dart';
import 'WackUpCall/wackUpcallfrom.dart';
import 'WebCheckIn/webcheckin.dart';
class PaymentDetails extends StatefulWidget{
  @override
  _PaymentDetails createState()=> _PaymentDetails();
}
class _PaymentDetails extends State<PaymentDetails>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
              InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> CartDetails()));
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
              Text('PAYMENT DETAILS',style: TextStyle( fontSize: 16,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w900,
                  color: Color(0xFFFFFFFF)) ,),
           SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.only(left:30.0,right: 30.0),
                child: Text('Please make the payment, after that you can enjoy all the features and benefits.',
                  textAlign: TextAlign.center,
                  style: TextStyle( fontSize: 12,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                    color: Color(0xD7E7E7E7)) ,),
              ),
              SizedBox(
                height: 30,
              ),
              Text('PAYMENT METHODS',style: TextStyle( fontSize: 12,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                  color: Color(0xFFFFFFFF)) ,),
              SizedBox(
                height: 10,
              ),

              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 100,
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
                        //  onSaved: ,
                        //obscureText: hidePassword,
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xFF3D3D71),
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
                            /*
                            prefixIcon: Padding(
                              padding: const EdgeInsets.only(
                                  top: 15.0, bottom: 15.0),
                              child: Image(
                                image:
                                AssetImage('assets/images/adrecticon.png')
                                ,height: 25,
                              ),
                            ),*/
                            hintText: ' Bank Card',
                            hintStyle: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,
                              color: Color(0xFFffffff), )),
                        autofocus: false,
                      ),
                    ),SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 100,
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
                        //  onSaved: ,
                        //obscureText: hidePassword,
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xFF3D3D71),
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
                            prefixIcon: Padding(
                              padding: const EdgeInsets.only(
                                  top: 15.0, bottom: 15.0,left: 30),
                              child: Image(
                                image:
                                AssetImage('assets/images/google_logo.png')
                                ,height: 25,
                              ),
                            ),
                            hintText: ' Pay',
                            hintStyle: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,
                              color: Color(0xFFffffff), )),
                        autofocus: false,
                      ),
                    ),SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 80,
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
                        //  onSaved: ,
                        //obscureText: hidePassword,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xFF3D3D71),
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
                            /*
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(
                              top: 15.0, bottom: 15.0),
                          child: Image(
                            image:
                            AssetImage('assets/images/adrecticon.png')
                            ,height: 25,
                          ),
                        ),*/
                            hintText: 'Paypal',
                            hintStyle: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,
                              color: Color(0xFFffffff), )),
                        autofocus: false,
                      ),
                    ),
                  ],
                ),

              SizedBox(
                height: 30,
              ),
              Text('PAYMENT DETAILS',style: TextStyle( fontSize: 12,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                  color: Color(0xFFFFFFFF)) ,),

              SizedBox(
                height: 15,
              ),
              Container(
                width: 300,
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

                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(
                            top: 15.0, bottom: 15.0),
                        child: Image(
                          image:
                          AssetImage('assets/images/cardholdericon.png')
                          ,height: 25,
                        ),
                      ),
                      hintText: 'Cardholder name',
                      hintStyle: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFffffff), )),
                  autofocus: false,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: 300,
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

                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(
                            top: 15.0, bottom: 15.0),
                        child: Image(
                          image:
                          AssetImage('assets/images/cardnumbercon.png')
                          ,height: 25,
                        ),
                      ),
                      hintText: 'Card Number',
                      hintStyle: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFffffff), )),
                  autofocus: false,
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
                              padding:
                              const EdgeInsets.only(top: 15.0, bottom: 15.0),
                              child: Image(
                                image: AssetImage('assets/images/fromicon.png'),
                              ),
                            ),
                            hintText: 'Expiry Date',
                            hintStyle: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 12,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,
                            )),
                        autofocus: false,
                      ),
                    ),
                    SizedBox(width: 20,),
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
                              padding:
                              const EdgeInsets.only(top: 15.0, bottom: 15.0),
                              child: Image(
                                image: AssetImage('assets/images/cardcvv.png'),
                              ),
                            ),
                            hintText: 'CVV ',
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
                height: 20,
              ),
              Container(
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xFF3D3D71),
                ),
                child: FlatButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return BookingConform();
                        });

                  },
                  child: Text(
                        'SUBMIT',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
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

class BookingConform extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Dialog(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    child: Container(
      height: 170,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color(0xFFF8F8F8),
        border: Border.all(color: Color(0xFF3D3D71), width: 3),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(

            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
      Image(
      image: AssetImage('assets/images/conformicon.png'),
      width: 35,
      //width: 150,
    ),
         SizedBox(
           width: 8,
         ),
            Text('BOOKING CONFIRMED',
               style: TextStyle(
                 fontSize: 15,
                 fontFamily: 'Montserrat',
                 fontWeight: FontWeight.w600,
                 color: Color(0xFF0EBE04),
               ),)
            ],
          ),
SizedBox(
  height: 20,
),
          Container(
            width: 220,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Color(0xFF3D3D71),
            ),
            child: FlatButton(
              onPressed: () {
               Navigator.of(context).push(MaterialPageRoute(builder: (context)=> AfterLooginLandingPage()));
              },
              child: Text(
                'OK',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ),


    ]
      ),
    ),
  );

  }


}





