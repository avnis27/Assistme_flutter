import 'package:assistme/BookingServices/cartDetails.dart';
import 'package:assistme/MainScreen/AfterLoginLandingScreen.dart';
import 'package:assistme/Setting/settingPage.dart';
import 'package:assistme/WackUpCall/wackUpcallfrom.dart';
import 'package:assistme/WebCheckIn/webcheckin.dart';
import 'package:flutter/material.dart';

import 'HomeScreen.dart';

class PrivacyPolicy extends StatelessWidget {
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

       child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Text(
                'PRIVACY POLICY',
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w900,
                    color: Color(0xFFFFFFFF)
                    //lor: Colors.white),),
                    ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                  'This Privacy (“Policy”) applies to the securing and processing of personal data by  www.airportservice.com a specialized service unit owned & managed by Elite Class Management Pvt Ltd (hereinafter “E.C.M.S” in connection with personal data provided by any person (“User”) who has purchased or intends to purchase or inquiries about any product(s) or service(s) made by E.C.M.S through any of E.C.M.S  interface channels including website, mobile site and mobile app (collectively referred herein as “Sales Channels”). For the purpose of Privacy Policy:\n\nReferences in this policy to “you” or “your” are references to ‘User’ References to “we”, “us” or “our” are references to ‘E.C.M.S’ When you take part in surveys or provide us with feedback References to “website” mean a reference to ‘website(s)’, ‘mobile site(s)’ and mobile app(s)\n\nwww.airportporterservice.com',
                  style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFFFFFFF)
                      //lor: Colors.white),),
                      ),
                ),


              SizedBox(
                height: 20,
              ),
         Text(
                  'PURPOSE :',
                 style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700,
                      color: Color(0xFFFFFFFF)
                    //lor: Colors.white),),
                  ),
                ),
              SizedBox(
                height: 10,
              ),
              Text(
                'We respect your need to understand how and why information is being collected, used, disclosed, transferred and stored. Thus we have developed this Policy to familiarize you with our practices. This policy sets out the way in which we process your information when you use our Website or other digital platforms in accordance with applicable data protection laws. It is important that you read this policy together with any other policies we may provide on specific occasions when we are collecting or processing your personal data, so that you are fully aware of how and why we are using your personal data. This policy supplements the other notices and is not intended to override them.'
                ,style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFFFFFFF)
                  //lor: Colors.white),),
                ),
              ),
              SizedBox(
                height: 20,
              ),
         Text(
                'CONTROLLER & INSURANCE :'
                    ,style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                    color: Color(0xFFFFFFFF)
                  //lor: Colors.white),),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
               'A “Controller” is a person or organization who alone or jointly determines the purposes for which, and the manner in which, any personal data is, or is likely to be, processed. This notice is issued on behalf of Elite Class Management Services  Pvt Ltd (E.C.M.S) as a controller.\n\nProcessor is a natural or legal person, public authority, agency or other body which processes personal data on behalf of the Controller.\n\nAs the circumstances warrant E.C.M.S may be Controller or Processor of your personal data.\n\n“ELITE CLASS MANAGEMENT SERVICES PVT LTD” is committed to protecting and respecting your privacy. This policy (together with our Terms and Conditions and any other documents referred to in it) sets out the basis on which any personal data we collect from you, or that you provide to us, will be processed by us. Please read the following carefully to understand our views and practices regarding your personal data and how we will treat it. For the purposes of the Data Protection Act 2000 (the “Act”), the data controller is ELITE CLASS MANAGEMENT SERVICES PVT. LTD.”',
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFFFFFFF)
                  //lor: Colors.white),),
                ),
              ),
              SizedBox(
                height: 20,
              ),
         Text(
                'YOUR CONSENT :',
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                    color: Color(0xFFFFFFFF)
                  //lor: Colors.white),),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
               'By using our Website, you understand and agree that personal information you provide through the Website will be held on a database created and operated by us, our group of companies and/or other selected third parties.\n\nPersonal data includes any information about any user from which that person can be identified. It does not include personal data where the identity has been removed (anonymous data). You may be asked for personal data anytime you are in contact with E.C.M.S Pvt Ltd directly or indirectly through a third party.',
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFFFFFFF)
                  //lor: Colors.white),),
                ),
              ),
              SizedBox(
                height: 20,
              ),
         Text(
               'PROTECTING YOUR SECURITY : '
                   , style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                    color: Color(0xFFFFFFFF)
                  //lor: Colors.white),),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
               'To ensure that your credit, debit or charge card is not being used without your consent, we will validate name, address and other personal information supplied by you during the order process against appropriate third party databases. By accepting these terms and conditions you consent to these checks being made. In performing these checks personal information provided by you may be disclosed to a registered Credit Reference Agency which may keep a record of that information. You can rest assured that this is done only to confirm your identity, that a credit check is not performed and that your credit rating will be unaffected. All information provided by you will be treated securely and strictly in accordance with the Act.',
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFFFFFFF)
                  //lor: Colors.white),),
                ),
              ),
              SizedBox(
                height: 20,
              ),
          Text(
               'YOUR  RIGHTS :',
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                    color: Color(0xFFFFFFFF)
                  //lor: Colors.white),),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
               'You have the right to ask us not to process your personal data for marketing purposes. We will inform you (before collecting your data) if we intend to use your data for such purposes. You can exercise your right to prevent such processing by checking certain boxes on the forms we use to collect your data, for example, the BOOKING/RESERVATION FORMS. You can also exercise your right not to receive marketing information at any time by clicking the link on the bottom of each email or contacting our customer service team on +91-9599993820\n\nThe Website may, from time to time, contain links to and from the websites of our partner networks, advertisers and affiliates. If you follow a link to any of these websites, please note that these websites have their own privacy policies and that we do not accept any responsibility or liability for these policies. Please check these policies before you submit any personal data to these websites.',
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFFFFFFF)
                  //lor: Colors.white),),
                ),
              ),

              SizedBox(
                height: 20,
              ),
        Text(
                ' DATABASE & COOKIES :',
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                    color: Color(0xFFFFFFFF)
                  //lor: Colors.white),),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'In order that we can monitor and improve the Website, we may gather certain information about you when you use it, including details of your domain name and IP (Internet Provider) address, operating system and browser. A cookie is an element of data that a website can send to your browser, which may then store it on the hard drive of your computer.\n\nWe collect, use and share aggregated data such as statistical or demographic data for any purpose. Aggregated data may be derived from your personal data but is not considered personal data in law as this data does not directly or indirectly reveal your identity. For example, we may aggregate your Usage Data to calculate the percentage of users accessing a specific website feature. However, if we combine or connect aggregated data with your personal data so that it can directly or indirectly identify you, we treat the combined data as personal data which will be used in accordance with this policy. We do not collect any special categories of personal data about you through our Website (this includes details about your race or ethnicity, religious or philosophical beliefs, sex life, sexual orientation, political opinions, trade union membership, information about your health and genetic and biometric data). Nor do we collect any information about criminal convictions and offences.\n\nWe collect, use, store and transfer different kinds of personal data about you. We have grouped together the following categories of personal data to explain how this type of information is used by us.\n\nThese terms are used throughout this notice as;',
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFFFFFFF)
                  //lor: Colors.white),),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '“Contact Data”: including your residential address, work address, email address and telephone numbers; “Identity Data”: including your first name, last name, username or similar identifier, title; “Website User Data”: Usernames, Passwords and other security related information used by you in relation to our services “Transaction Data: Transactional history about your aviation activities, buying behavior. Information pertaining any other traveler(s) for whom you made a booking through your registered EWS account. In such case, you must confirm and represent that each of the other traveler(s) for whom a booking has been made, has agreed to have the information shared by you disclosed to us and further be shared by us with the concerned service provider(s). “Marketing and Communications Data”: including your marketing and communication preferences. We also track when you receive and read marketing communications from us, which information we use to improve our marketing services, provide you with more relevant information and improve the quality of our marketing materials. Additional information about the personal data we process in connection with marketing is included with the marketing communications we send you; “Public Domain or Third Party Data”: Data available in public domain or received from any third party including social media channels, including but not limited to personal or non-personal information from your linked social media channels (like name, email address, friend list, profile pictures or any other information that is permitted to be received as per your account settings) as a part of your account information. “Profile Data”: including information collected progressively when you visit our site including your referral website, pages you visit, actions you take, patterns of page visits and information from forms you fill in; “Technical Data”: includes information collected when you access our website, mobile site or mobile app your internet protocol (IP) address, your login data, browser type and version, time zone setting and location, browser plug-in types and versions, operating system and platform and other technology on the devices you are using; and “Usage Data”: information about how you use our Website. “Any other Personal Data”:',
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFFFFFFF)
                  //lor: Colors.white),),
                ),
              ),
              SizedBox(
                height: 20,
              ),
        Text(
                'ACCESS RIGHTS :  ',
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                    color: Color(0xFFFFFFFF)
                  //lor: Colors.white),),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'You have a right to access the personal data about you that is held by us. To obtain a copy of the personal information we hold about you, please write to us at the following address enclosing your postal details to ELITE CLASS MANAGEMENT SERVICES PVT LTD Elite Tower, 2nd Floor, G-364/B, Raj Nagar-II, Palam Colony, New Delhi-110077 India.',
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFFFFFFF)
                  //lor: Colors.white),),
                ),
              ),
              SizedBox(
                height: 20,
              ),
         Text(
                'CHANGES TO OUR PRIVACY POLICY :',
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                    color: Color(0xFFFFFFFF)
                  //lor: Colors.white),),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Any changes we may make to our Privacy Policy in the future will be posted on this page and, where appropriate, notified to you by email.\n\nIf you have any queries about data protection, please contact us on +91-9599993820.',
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFFFFFFF)
                  //lor: Colors.white),),
                ),
              ),

              SizedBox(
                height: 20,
              ),

            ],
          ),
        ),),
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
