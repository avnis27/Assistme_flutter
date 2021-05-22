import 'package:assistme/BookingServices/cartDetails.dart';
import 'package:assistme/MainScreen/AfterLoginLandingScreen.dart';
import 'package:assistme/Setting/settingPage.dart';
import 'package:assistme/WackUpCall/wackUpcallfrom.dart';
import 'package:assistme/WebCheckIn/webcheckin.dart';
import 'package:flutter/material.dart';

import 'HomeScreen.dart';

class TermsAndConditions extends StatelessWidget{
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
      // child: Center(
         child: Padding(
           padding: const EdgeInsets.symmetric(horizontal: 15,),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: <Widget>[
               SizedBox(
                 height: 30,
               ),
               Text(
                 'TERMS & CONDITIONS',
                 textAlign: TextAlign.center,
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
                 'PLEASE READ THIS TERMS OF SERVICE AGREEMENT CAREFULLY. BY USING THIS WEBSITE OR BY DOING SERVICE BOOKINGS FROM THIS WEBSITE YOU AGREE TO BE BOUND BY ALL OF THE TERMS AND CONDITIONS OF THIS AGREEMENT.',
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
                 '“E.C.M.S” means ELITE CLASS MANAGEMENT SERVICES PVT LTD\n\nWWW.AIRPORTPORTERSERVICE.COM (A Specialized Service unit owned & managed by Elite Class Management Services Pvt Ltd)',
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
                 '“Booking Process” means actions steps by Facilitator for undertaking the Service booking through online or through an offline mode as may be acceptable to Elite Class Management Services Pvt. Ltd. (E.C.M.S)',
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
                 'Further, we wish to inform you that Elite Class Management Services Pvt Ltd (E.C.M.S) offers its specialized Airport Porter Service unit to its traveler or a passenger, related to assist with their Loads/Baggage at various Domestic and International Airports in India.',
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
                 '“Guest(s)” means the person(s) to whom the Service is being rendered / intended to be rendered by the Facilitator. It may be noted that some individual Facilitator may also be the Guest.',
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
                 '“Porter” means Airport Porter Supervisor, designated or arranged by E.C.M.S or its licensed Vendor to provide Service to the Guest(s) at Airport.',
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
                 '“No Show” means the failure by Guest to reach the meeting point or identify himself/herself to Airport Porter Supervisor or if in case service not required at the time of identification.',
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
                 '“Online Booking or engine” means online facility provided on Website and is available to Facilitator(s) for undertaking booking/cancellation of Services subject to the applicable terms and conditions as provided on the Website or as may be agreed by E.C.M.S separately in writing.',
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
                 '“AIRPORT PORTER SERVICE” or “Service(s)” means paid Airport Porter provided by E.C.M.S at the Airport and as detailed in Clause 2 below and as may amended from time to time by E.C.M.S and made available on the Website.',
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
                 '“Member” any entity authorized by E.C.M.S in writing on mutually agreed terms and conditions for undertaking bookings and reservations of Airport Porter Services on behalf of their client(s) in India and/or abroad.',
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
                 '“Website” means www.airportporterservice.com',
                 textAlign: TextAlign.left,
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
                 'SCOPE OF AIRPORT PORTER SERVICE :',

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
                 'The scope of Services includes the service and its inclusions broadly defined under following categories:\n\n2.1 Departure Porter Services: Baggage/Luggage/Loads carried out to a Guest for its International or Domestic flight by E.C.M.S.\n\n2.2 Arrival Porter Services: Baggage/Luggage/Loads carried out to a Guest arriving on International or Domestic flight by E.C.M.S\n\nFor more information on Services please refer to our \n\nWebsitewww.airportporterservice.com',
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
                 'ONLINE BOOKING :',
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
                 '3.1 Facilitator must complete the Booking Process on the Website in advance for availing Services and confirmation of Services pursuant to all online and offline request by Facilitator(s) E.C.M.S shall be subject to the availability.\n\n3.2 Facilitator(s) shall use Online or Booking engine to make booking for the Services.\n\n3.3 The bookings can be made by the Facilitator(s) for Porter Service available online by E.C.M.S from time to time subject to Clause 4.7 below.\n\n3.4 Facilitator can book online for up to 05 Airport Porters, per booking. For group bookings (more than 05 guests) Facilitator(s) may contact E.C.M.S on contact details provided on the Website : www.airportporterservice.com\n\n3.5 Facilitator is responsible for providing E.C.M.S with correct and legitimate detail(s) about itself and its Guest(s) during the Booking Process. E.C.M.S at all times shall reserve the right for taking any additional information in relation to the Facilitator(s) and/or Guest(s) during the process of online/offline booking or anytime during the performance of Services or any clarification thereafter.\n\n3.6 Any and/or all request(s) as may be received and acknowledged by E.C.M.S does not guarantee the Service by E.C.M.S and shall be subject to written confirmation by E.C.M.S\n\n3.7 E.C.M.S reserves the right to accept or decline or cancel Facilitators request for Service without assigning any reasons.\n\n3.8 During the Booking Process the Facilitator(s) are requested to take extra care while providing information about guest(s), date and time of travel, contact numbers. etc. E.C.M.S assumes no responsibility whatsoever on account of any problem that may arise on account of false/ erroneous information provided by Facilitator(s) to E.C.M.S or any delay or cancellation of flight or for any reason whatsoever including any major event, change in flight schedule, failure of Guest(s) to report at Airport on time.\n\n3.9 Once the Booking Process is completed, Facilitator can request for cancellation of Services in case of any change in travel plan and E.C.M.S shall initiate the refund process in line with the Cancellations and Refund Policy provided in Clause 5 below. However, the cancellation and refund to Client(s) of any Member must be processed through the issuing Member only subject to the cancellation and refund policy.\n\n3.10 It is hereby clarified that during the process of booking by Online Engine on our Website, if there is any “transaction fee” which is charged by the bank issuing the credit/debit card, such charges shall be paid by the Facilitator and E.C.M.S shall have no liability to pay such transaction fee.\n\n3.11 All Members shall deal with their clientele by themselves and E.C.M.S assume no responsibility of transaction between Member and its client. For all confirmed and legitimate Service(s) bookings by Member(s), E.C.M.S shall only be responsible for providing Service(s) to Guest(s), subject to the terms and conditions of Porter Service at Airport.',
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
                 '3.12 CREDIT/DEBIT CARD:',
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
                 'Payment of online booking is accepted by all major credit/debit card (“Card”). In case the card used to transact online is issued in a country other than India there may be bank charges applicable and E.C.M.S shall not responsible for any charges that may be levied by the Card Issuing Bank. The Card payment is subject to authorization from the bank issuing the Card.',
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
                 '3.13 NET BANKING :',
                 style: TextStyle(
                     fontSize: 12,
                     fontFamily: 'Montserrat',
                     fontWeight: FontWeight.w700,
                     color: Color(0xFFFFFFFF)
                   //lor: Colors.white),),
                 ),
               ),
               SizedBox(
                 height: 20,
               ),
               Text(
                 'If the Facilitator has an account with any of the mentioned banks under the heading net banking on our Website, then Facilitator can pay for the booking(s) securely through the respective banks Internet banking option and the amount will be automatically debited from your account. E.C.M.S is not liable for any payment authorization, as the payment gateway is responsible only to hand over the information in an encrypted / secure format to the respective bank for authorizing the transaction. Any issue with payment authorization will need to be taken up with your respective bank. This facility is valid for all bookings made in Indian Rupees (INR) currency only.\n\nFor more information on Services please refer to our Website\n\nwww.airportporterservice.com ',
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
                 'CONDITIONS OF SERVICES AT AIRPORT LOCATION :',
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
                 'Performance of Porter Services to Guest(s) by E.C.M.S at the Airport shall be subject to following conditions:',
                 style: TextStyle(
                     fontSize: 12,
                     fontFamily: 'Montserrat',
                     fontWeight: FontWeight.w400,
                     color: Color(0xFFFFFFFF)
                   //lor: Colors.white),),
                 ),
               ),

               SizedBox(
                 height: 10,
               ),
               Text(
                 '4.1 Guest shall identify himself/herself to our Airport Porter Supervisor or call on the number provided on Booking confirmation on Arrival or Departure  at Airport.\n\n 4.2 Guest(s) shall be solely responsible for compliance with all governmental regulations upon utilities used while departing or arriving at Airport and ensuring that all required documents are in order and also comply with all conditions/requirements stipulated by Government of India and other relevant authorities and agencies in relation to their Air Travel.\n\n4.3 Service by E.C.M.S to Guest(s) shall be subject to written confirmation of Service.\n\n4.4 Duration of Service: The performance of Service will commence at the scheduled meeting time or the time of service as per the booking confirmation. However, E.C.M.S at its sole discretion, may permit Guest(s) a window of 10 (twenty) minutes from the scheduled meeting time to avail the Porter Service(s).\n\n4.5 In case of any failure of Guest(s) to report on time at the meeting point or the time of service as per the booking confirmation, she/he shall be deemed as a NO SHOW and the Service will not be assured.\n\n4.6 For each booking of Porter service, Baggage/Luggage  of 02(Two)Pcs carried out to Guest(s). For the purpose of check-in baggage, the sum of the 03 (three) dimensions (length + breadth + height) must not exceed 62 (sixty two) inches or 158 (one hundred fifty eight) centimeters for each piece. Facilitators shall provide the requirement of porter service during the Booking Process. E.C.M.S may accept the additional requirement of porter services on payment of additional charges on the spot, subject to the availability.\n\n4.7 E.C.M.S shall at its sole discretion, be entitled to cancel, alter or omit any part of the Service with or without notification to Facilitator/Guest(s) at its sole discretion. In such cases, E.C.M.S’s  liability shall be limited to re-performance of the cancelled Service. In cases where E.C.M.S is unable to re-perform the service, partial/full refund may be provided by E.C.M.S to the Facilitator/Guest(s) at its sole discretion.\n\n4.8 Delays and cancellations of Service by E.C.M.S may result from factors beyond its control such as the accidents, governmental restrictions and other events of force majeure, E.C.M.S’s liability shall be limited to re-performance of the cancelled Service.\n\n4.9 E.C.M.S at all times shall reserve the right to withdraw the Porter Service without assigning any reason and without further reference, in case the Facilitator/Guest(s) is / are in breach of any term and condition of the Porter Service.\n\n4.10 Facilitator/Guest shall not use the Porter Service or its reference for any unlawful or prohibited purposes.\n\n4.11 E.C.M.S at its sole discretion may decline to provide Service in case of any misconduct or any unlawful or prohibited activity by the Facilitator/Guest(s).\n\n 4.12 For all product and services provided by third parties (for example, limousine transfers, floral deliveries, hotels reservation.), the terms and conditions, cancellation and refund policies of such third party shall be applicable. E.C.M.S shall not be liable to Facilitator/Guest(s) regarding any product and service provided by any third party.\n\n4.13 E.C.M.S s liability, if any, shall in no event exceed the total charges paid by the Facilitator/Guest(s) for the Services. Under no circumstances, E.C.M.S shall be liable for any consequential, exemplary, special, indirect, incidental or punitive damages.\n\n4.14 Facilitator/Guest(s) agrees to indemnify E.C.M.S in respect to all claims, damages, losses, costs, and expenses (including legal expenses) which are awarded against or incurred by E.C.M.S as a direct result of acts or omissions by Facilitator/Guest(s) either during the course of booking and/or using the Porter Service.\n\n4.15 E.C.M. shall not be liable for the consequences of any delay or for any loss, cost or expense incurred by Facilitator/Guest(s) as a result of the actions of any other party including without limitation the Airline, Customs and Immigration Authorities etc.\n\n4.16 In relation to the Service, E.C.M.S accepts no liability for any items left or disclaimed by the Guest(s) during the course and after providing the Service.\n\n4.17 By offering Services, E.C.M.S does not accept any liability for damages, losses, or delays that may result on account of improper documents including without limitation possession of valid ticket, visa, passport or any other requirement in relation to entry, exist, length of stay, special permissions etc. as may be required for traveling through E.C.M.S\n\nFacilitator(s) acknowledge and agree to inform Guest(s) of these Terms and Conditions including with Conditions of Service at Airport provided above.',
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
                 'CANCELLATION & REFUND POLICY TERMS:',
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
                 '5.1 Facilitator(s)/Guest(s) if they wish to cancel their booking must request for the cancellation of booked service by notify in writing to E.C.M.S with the booking details and a reason for cancellation. E.C.M.S shall review such cancellation request(s) for its authenticity and once approved by E.C.M.S, the service booking will be cancelled and refund process will be initiated and necessary credit will be provided to the Facilitator subject to the deduction of applicable cancellation charges. Refer below specification provided under the cancellation of services.\n\n5.1.1 Any cancelation of services made within 48hrs prior to the scheduled arrival or departure facilitation, the 50% refund will be process, exclude taxes.\n\n5.1.2 Any cancelation of services made less than 24hrs to the scheduled arrival or departure facilitation, no refund will be process.\n\n5.1.3 At the part of service failure at any channel due to the security or any other reasons, the 100% refund will be process, exclude taxes\n\n. Note: E.C.M.S shall endeavor to process refund if applicable, within 15 days from the date of cancellation and receipt of bank/credit card details.\n\n5.2 No refund will be made in case of the following :\n\n5.2.1 Wrong information about travel details of Guest(s) during the Booking Process;\n\n5.2.2 No SHOW of Porter service;\n\n5.2.3 Booking amount paid for Service Add-ons;\n\n5.2.4 Delayed/missed/cancelled flights;\n\n5.2.5 Late arrival at the airport which results in denied check-in or boarding by the airlines;\n\n5.2.6 In case of any misconduct or any unlawful or prohibited activity by the Facilitator/Guest(s).\n\nPRIVACY :\n\n5.2.7 ELITE CLASS MANAGEMENT SERVICES PVT LTD believes strongly in protecting user privacy. Please refer to E.C.M.S privacy policy, incorporated by reference herein, that is posted on the Website, www.airportporterservice.com ',
                 style: TextStyle(
                     fontSize: 12,
                     fontFamily: 'Montserrat',
                     fontWeight: FontWeight.w400,
                     color: Color(0xFFFFFFFF)
                   //lor: Colors.white),),
                 ),
               ),

               SizedBox(
                 height: 10,
               ),
          Text(
                 'CUSTOMER SOLICITATION : ',
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
                 '5.2.8 Unless you notify our direct E.C.M.S Executive, while they are calling you, of your desire to opt out from further direct company communications and solicitations, you are agreeing to continue to receive further emails and call solicitations E.C.M.S and its designated in house teams(s).',
                 style: TextStyle(
                     fontSize: 12,
                     fontFamily: 'Montserrat',
                     fontWeight: FontWeight.w400,
                     color: Color(0xFFFFFFFF)
                   //lor: Colors.white),),
                 ),
               ),

               SizedBox(
                 height: 10,
               ),
           Text(
                 'OPT OUT PROCUDURE : ',
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
                 '5.2.9 We provide easy and simpler ways to opt out of from future solicitations. You may also choose to opt out, via sending your email address to: airportporterservice.com OR You may send a written remove request to  office at..AIRPORT PORTER SERVICE c/o ELITE CLASS MANAGEMENT PVT. LTD. Elite Tower, 2nd Floor, G-364/B, Raj Nagar-II, Palam Colony, New Delhi-110077 India.',
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
                 'GENERAL TERMS :',
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
                 'The scope of Services includes various services and packages broadly defined under following categories:\n\n6.1 E.C.M.S reserves the right to amend, add to, change or remove any part of these Terms and Conditions at any time, without notice. Any changes to these Terms and Conditions or any terms posted on the Website apply as soon as they are posted. By continuing to use the Website after any changes are posted, you are indicating your acceptance of those changes.\n\n6.2 E.C.M.S may add, change, discontinue, remove or suspend any other content posted on the Website, including features and specifications of products described or depicted on the Website, temporarily or permanently, at any time, without notice and without liability.\n\n6.3 E.C.M.S reserves the right to undertake all necessary steps to ensure that the security, safety and integrity of E.C.M.S systems as well as its client’s interests are and remain, well-protected.\n\n6.4 E.C.M.S may take various steps to verify and confirm the authenticity, enforceability and validity of reservations placed by Facilitator(s).\n\n6.5 E.C.M.S in its sole and exclusive discretion, concludes that any booking(s) is not or do not reasonably appear to be, authentic, enforceable or valid, then E.C.M.S may cancel the said booking any time before or during the Service.\n\n6.6 Any communications or materials to the Website by electronic mail or otherwise, including any comments, data, questions, suggestions or the like, all such communications are, as may be received by E.C.M.S will be treated by E.C.M.S as non-confidential.\n\n6.7 Facilitator(s)/Guest(s) hereby give up any and all claim that any use of such material violates any of Facilitator(s)/Guest(s) rights including moral rights, privacy rights, proprietary or other property rights, publicity rights, rights to credit for material or ideas, or any other right, including the right to approve the way E.C.M.S uses such material.\n\n6.8 Any material submitted to our Website may be adapted, broadcast, changed, copied, disclosed, licensed, performed, posted, published, transmitted or used by E.C.M.S anywhere in the world, in any medium, forever. Facilitator(s) agrees that it has read our Privacy Policy as provided on our Website.\n\n6.9 Facilitator(s) acknowledges that Internet transmissions are never completely private or secure. Facilitator(s) further understands that any message or information as may be sent to our website may be read or intercepted by others unless there is a special notice that a particular message (for example, credit card information) is encrypted (send in code). Sending a message or email or any communication written or verbal to E.C.M.S does not cause E.C.M.S to have any special responsibility to Facilitator/Guest(s).\n\n6.10 Copying of part or all the contents of this website without permission of E.C.M.S is prohibited except to the extent that such copying/printing is necessary for the purposes of availing of the Services.\n\n6.11 Disputes, if any, shall be subject to Indian laws and shall be exclusively subject to the jurisdiction of the courts at New Delhi.\n\n6.12 The booking for Services displayed on this website may not be available for purchase in any particular country or locality. The reference to such Porter Services on the website does not imply or warrant that the booking of Services will be available at any time in such particular geographical location(s). Person or entity interested in booking the Services may check with their local members for information on the availability of Services.',
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
                 'PROPRIETARY RIGHTS : ',
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
                 '7.1 E.C.M.S has proprietary rights and secrets in our services and products. E.C.M.S also has rights to all trademarks and trade dress and specific layouts of this webpage, including calls to action, text placement, images and other information.',
                 style: TextStyle(
                     fontSize: 12,
                     fontFamily: 'Montserrat',
                     fontWeight: FontWeight.w400,
                     color: Color(0xFFFFFFFF)
                   //lor: Colors.white),),
                 ),
               ),
               SizedBox(
                 height: 25,
               ),
             ],




           ),
         ),
       ),

    // ),
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