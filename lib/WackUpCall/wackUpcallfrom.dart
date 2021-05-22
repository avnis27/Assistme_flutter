import 'package:assistme/BookingServices/cartDetails.dart';
import 'package:assistme/HomePage/HomeScreen.dart';
import 'package:assistme/MainScreen/AfterLoginLandingScreen.dart';
import 'package:assistme/MainScreen/LandingPage.dart';
import 'package:assistme/Setting/settingPage.dart';
import 'package:assistme/WebCheckIn/webcheckin.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

import '../paymentDetails.dart';

class WackUpCall extends StatefulWidget {
  @override
  _WackUpCall createState() => _WackUpCall();
}

class _WackUpCall extends State<WackUpCall> {
  String datatoChange = 'WAKE UP CALL';
  String dataNewChange = 'MANUAL IVR';
  int _value = 0;
  int _value2 = 2;

  void changedata() {
    setState(() {
      datatoChange = 'MANUAL IVR';
    });
  }

  int countFavirote= 15;

  DateTime date= DateTime.now();
  Future<Null>selectedTimePicker(BuildContext context)async{
    final DateTime picked= await showDatePicker(context: context, initialDate: date,
        firstDate: DateTime(1887), lastDate: DateTime(2050));
    if(picked == null && picked != date){
      setState(() {
        date= picked;
        print(date .toString());
      });
    }
  }

  TimeOfDay time;
  TimeOfDay picked;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    time=TimeOfDay.now();
  }
  Future<Null>selectTime(BuildContext context)
  async{
    picked =await showTimePicker(context: context,initialTime: time);
    if(picked== null){
      setState(() {
        time= picked;
      });
    }
  }

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
            SizedBox(
              height: 30,
            ),
            Text(
              '$datatoChange',
              style: TextStyle(
                fontSize: 22,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w900,
                color: Color(0xFFFD8A0D),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () => //changedata(),
                      setState(() => _value = 0),
                  child: Container(
                    width: 150,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          bottomLeft: Radius.circular(8)),
                      // color: Color(0xFFF5F5F5)
                      color:
                          _value == 0 ? Color(0xFF3D3D71) : Color(0xFFF5F5F5),
                    ),
                    // color: _value == 0 ? Color(0xFFF5F5F5) :  Color(0xFF3D3D71),
                    child: Center(
                      child: Text(
                        'IVR',
                        style: TextStyle(
                          color: Color(0xFFFD8A0D),
                          fontSize: 12,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => //changedata(),
                      setState(() => _value = 1),
                  child: Container(
                    width: 150,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(8),
                          bottomRight: Radius.circular(8)),
                      //color: Color(0xFFF5F5F5)
                      color:
                          _value == 1 ? Color(0xFF3D3D71) : Color(0xFFF5F5F5),
                    ),
                    //  color: _value == 1 ? Color(0xFFF5F5F5) :  Color(0xFF3D3D71),
                    child: Center(
                      child: Text(
                        'MANUAL',
                        style: TextStyle(
                          color: Color(0xFFFD8A0D),
                          fontSize: 12,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[

                    InkWell(
                      child: Image.asset(
                        'assets/images/timingicon.png',
                        height: 35,
                      ),
                    ),

                  /* Container(
                    width: 120,
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
                            // border: Border.all(color: Color(0xFFD4D4D4)),
                            //  color: Color(0xFFF5F5F5)
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
                            child: InkWell(
                              onTap: () {
                                selectedTimePicker(context);
                              },
                              child: Image(
                                image:
                                    AssetImage('assets/images/maualdateicon.png'),
                              ),
                            ),
                          ),
                          hintText: 'Date ',
                          hintStyle: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 16,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,
                          )),
                      autofocus: false,
                    ),
                  ),
                  Container(
                    width: 120,
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
                            // border: Border.all(color: Color(0xFFD4D4D4)),
                            //  color: Color(0xFFF5F5F5)
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
                            child: InkWell(
                              onTap: () {
                                selectTime(context);
                              },
                              child: Image(
                                image: AssetImage(
                                    'assets/images/manualtimeicon.png'),
                              ),
                            ),
                          ),
                          hintText: 'Time',
                          hintStyle: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 16,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,
                          )),
                      autofocus: false,
                    ),
                  ),*/
                  Container(
                    width: 120,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Color(0xFF3D3D71),
                    ),
                    child: Row(
                      children: <Widget>[
                        SizedBox(
                          width: 15,
                        ),
                     InkWell(
                      onTap: () {
                        selectedTimePicker(context);
                      },
                      child: Image(
                        image:
                        AssetImage('assets/images/maualdateicon.png'),
                      ),
                     ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Date',style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 16,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400,
                        )),
                      ],
                    ),
                  ),


                  Container(
                    width: 120,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Color(0xFF3D3D71),
                    ),
                    child: Row(
                      children: <Widget>[
                        SizedBox(
                          width: 15,
                        ),
                        InkWell(
                          onTap: () {
                            selectTime(context);
                          },
                          child: Image(
                            image: AssetImage(
                                'assets/images/manualtimeicon.png'),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Time',style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 16,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400,
                        )),
                      ],
                    ),
                  ),


                ],
              ),
            ),
            SizedBox(
              height: 40,
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
                        MaterialPageRoute(builder: (context) => AfterLooginLandingPage()),
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
              height: 30,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              color: Color(0xFF3d3d71),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  'TOP DESTINATIONS',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
            ),
            Container(
              height: 250,
              color: Color(0xFF3D3D71),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all( 8),
                    child: Stack(
                      children: <Widget>[
                        //  Container(
                        //   height: 80,
                        Image(
                          image: AssetImage('assets/images/parisimage.png'),),

                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 50,
                              ),
                              Text(
                                'SINGAPORE',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFFFFFFFF),
                                ),
                              ),
                              Text(
                                'The Republic of Singapore, ',
                                style: TextStyle(
                                  fontSize: 8,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFFFFFFFF),
                                ),
                                textAlign: TextAlign.center,

                              ),
                            ],
                          ),
                        ),

                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 20,
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

class IVRservices extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        width: double.infinity,
        height: 110,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Color(0xFFFFFFFF),
          border: Border.all(color: Color(0xFF3D3D71), width: 2),
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 200.0),
              child: IconButton(
                icon: Icon(
                  Icons.close,
                  color: Color(0xFF3D3D71),
                ),
                onPressed: () => {
                  Navigator.of(context).pop(),
                },
                //debugPrint("item Selected"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "PLEASE NOTE :",
                    style: TextStyle(
                      color: Color(0xFF3D3D71),
                      fontSize: 12,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                    )),
                TextSpan(
                    text: " IVR is free for first two usage.",
                    style: TextStyle(
                      color: Color(0xFF3D3D71),
                      fontSize: 12,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                    )),
              ])),
            ),
          ],
        ),
      ),
    );
  }
}
