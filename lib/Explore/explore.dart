import 'dart:ui';
import 'package:assistme/BookingServices/cartDetails.dart';
import 'package:assistme/HomePage/HomeScreen.dart';
import 'package:assistme/MainScreen/AfterLoginLandingScreen.dart';
import 'package:assistme/Setting/settingPage.dart';
import 'package:assistme/WackUpCall/wackUpcallfrom.dart';
import 'package:assistme/WebCheckIn/webcheckin.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Explore extends StatefulWidget {
  @override
  _Explore createState() => _Explore();
}

class _Explore extends State {
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
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 30),
              child: Text(
                'EXPLORE',
                style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w900,
                    color: Color(0xFFFD8A0D)),
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 125,
                width: 125,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF3D3D71),
                ),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        _ExploreWifi('https://www.airportporterservice.com/term-and-conditions');
                      },
                      child: Image.asset(
                        'assets/images/wifiicon.png',
                        height: 40,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'WIFI',
                      style: TextStyle(
                        fontSize: 10,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFFD8A0D),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Container(
                height: 125,
                width: 125,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF3D3D71),
                ),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: (){
                        _SleepingLounge('https://www.airportporterservice.com/privacy-policy');
                      },
                      child: Image.asset(
                        'assets/images/sleepingicon.png',
                        height: 40,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'SLEEPING LOUNGE',
                      style: TextStyle(
                        fontSize: 10,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFFD8A0D),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 125,
                width: 125,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF3D3D71),
                ),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: (){
                        _BabyCareRoom('https://www.airportporterservice.com/passenger-charter');
                      },
                      child: Image.asset(
                        'assets/images/babycareicon.png',
                        height: 40,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'BABY CARE ROOMS',
                      style: TextStyle(
                        fontSize: 10,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFFD8A0D),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Container(
                height: 125,
                width: 125,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF3D3D71),
                ),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: (){
                        _SmokingLounge('https://www.airportporterservice.com/');
                      },
                      child: Image.asset(
                        'assets/images/smokingloungeicon.png',
                        height: 40,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'SMOKING LOUNGE',
                      style: TextStyle(
                        fontSize: 10,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFFD8A0D),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 125,
                width: 125,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF3D3D71),
                ),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: (){
                        _LocalConnectivity('https://www.airportporterservice.com/manage-my-booking');
                      },
                      child: Image.asset(
                        'assets/images/connectivityicon.png',
                        height: 40,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'LOCAL CONNECTIVITY',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 10,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFFD8A0D),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Container(
                height: 125,
                width: 125,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF3D3D71),
                ),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: (){
                        _Passenger('https://www.airportporterservice.com/about-us');
                      },
                      child: Image.asset(
                        'assets/images/passengersicon.png',
                        height: 40,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'PASSENGER',
                      style: TextStyle(
                        fontSize: 10,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFFD8A0D),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 125,
                width: 125,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF3D3D71),
                ),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: (){
                        _BuggyServices('https://www.airportporterservice.com/contact-us');
                      },
                      child: Image.asset(
                        'assets/images/buggyicon.png',
                        height: 40,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'BUGGY SERVICES',
                      style: TextStyle(
                        fontSize: 10,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFFD8A0D),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Container(
                height: 125,
                width: 125,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF3D3D71),
                ),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: (){
                        _WheelchairAssistance('https://www.airportporterservice.com/faq');
                      },
                      child: Image.asset(
                        'assets/images/wheelchairicon.png',
                        height: 40,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'WHEELCHAIR ASSISTANCE',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 10,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFFD8A0D),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
        ],
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

  Future<void> _ExploreWifi(String wifiurl) async {
    if (await canLaunch(wifiurl)) {
      final bool nativeAppLaunchSucessed = await launch(
        wifiurl,
        forceWebView: true,
        universalLinksOnly: false,
      );
      if (!nativeAppLaunchSucessed) {
        await launch(wifiurl);
      }
    }
  }
  Future<void>_SleepingLounge(String sleepurl)
  async{
    if(await canLaunch(sleepurl)){
      final bool sleepingLaunchSucessed =await launch(sleepurl,forceWebView: true);
      if(!sleepingLaunchSucessed){
        await launch(sleepurl);
      }}}

  Future<void>_BabyCareRoom(String babyurl)async{
    if(await canLaunch(babyurl)){
      final bool babycareSucessed = await launch(babyurl,forceWebView: true);
      if(!babycareSucessed){
        await launch(babyurl);
      }}}

  Future<void>_SmokingLounge(String smokurl)async{
    if(await canLaunch(smokurl)){
      final bool smokingLoungeSucessed = await launch(smokurl,forceWebView: true);
      if(!smokingLoungeSucessed){
        await launch(smokurl);
      }}}

  Future<void>_LocalConnectivity(String localurl)async{
    if(await canLaunch(localurl)){
      final bool localConnectivitySuessed = await launch(localurl,forceWebView: true);
      if(!localConnectivitySuessed){
        await launch(localurl);
      }}}

  Future<void>_Passenger(String passengerurl)async{
    if(await canLaunch(passengerurl)){
      final bool passengerSucessed = await launch(passengerurl,forceWebView: true);
      if(!passengerSucessed){
        await launch(passengerurl);
      }}}

  Future<void>_BuggyServices(String buggyurl)async{
    if(await canLaunch(buggyurl)){
      final bool buggyServicesSucessed = await launch(buggyurl,forceWebView: true);
      if(!buggyServicesSucessed){
        await launch(buggyurl);
      }}}

  Future<void>_WheelchairAssistance(String wheelurl)async{
    if(await canLaunch(wheelurl)){
      final bool wheelchairAssistSucessed = await launch(wheelurl,forceWebView: true);
      if(!wheelchairAssistSucessed){
        await launch(wheelurl);
      }}}


}
