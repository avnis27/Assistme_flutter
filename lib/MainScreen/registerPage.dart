import 'package:assistme/BookingServices/cartDetails.dart';
import 'package:assistme/HomePage/HomeScreen.dart';
import 'package:assistme/MainScreen/AfterLoginLandingScreen.dart';
import 'package:assistme/Setting/settingPage.dart';
import 'package:assistme/WackUpCall/wackUpcallfrom.dart';
import 'package:assistme/WebCheckIn/webcheckin.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterPage createState() => _RegisterPage();
}

class _RegisterPage extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
 final confirmPassController = TextEditingController();
  @override
  Widget build(BuildContext context) {
   return Scaffold(
 //resizeToAvoidBottomInset: false,
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
         key: _formKey,
         child: Column(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[

                       SizedBox(height: 100,),
                        Container(
                          child:  Text('REGISTER',style: TextStyle(
                              fontSize: 16,
                           // color: Color(0xFF3D3D71),
                            color: Colors.white,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w900,),),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 270,
                          height: 50,
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            //obscureText: true,
                            controller:  firstNameController,
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'First Name cannot be empty';
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
                                BorderSide(color: Color(0xFF3D3d71)),
                                borderRadius: BorderRadius.circular(8),
                                ),
                               focusedBorder: OutlineInputBorder(
                               borderSide:
                             BorderSide(color: Color(0xFF3D3d71)),
                                borderRadius: BorderRadius.circular(8),
                                ),
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 15.0, bottom: 15.0),
                                  child: Image(
                                    image:
                                    AssetImage('assets/images/nameicon.png'),
                                    height: 20,
                                    width: 20,
                                  ),
                                ),
                                hintText: 'First Name',
                                hintStyle: TextStyle(
                                  //  color: Color(0xFF3D3D71),
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w400,)),
                            autofocus: false,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          width: 270,
                          height: 50,
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            //obscureText: true,
                            controller: lastNameController,
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Last Name cannot be empty';
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
                                 // borderSide:
                                 // BorderSide(color: Color(0xFF3D3D71)),
                                  //borderRadius: BorderRadius.circular(8),
                                ),
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 15.0, bottom: 15.0),
                                  child: Image(
                                    image:
                                    AssetImage('assets/images/nameicon.png'),
                                    height: 20,
                                    width: 20,
                                  ),
                                ),
                                hintText: 'Last Name',
                                hintStyle: TextStyle(
                                  color: Colors.white,
                                     fontSize: 15,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w400)),
                            autofocus: false,
                          ),
                        ),

                        SizedBox(height: 10,),
                        Container(
                          width: 270,
                          height: 50,
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            //obscureText: true,
                            controller: emailController,
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'valid email id';
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
                                    AssetImage('assets/images/mobile_icon.png'),
                                    height: 20,
                                    width: 20,
                                  ),
                                ),
                                hintText: 'E-mail/Mobile',
                                hintStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w400)),
                            autofocus: false,
                          ),
                        ),

                        SizedBox(height: 10,),
                        Container(
                          width: 270,
                          height: 50,
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            controller: passwordController,
                            obscureText: true,
                            validator: (value) {
                              if (value.isEmpty) {
                                return ' validate password ';
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
                                    AssetImage('assets/images/password_icon.png'),
                                    height: 20,
                                    width: 20,
                                  ),
                                ),
                                hintText: 'Password',
                                hintStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w400)),
                            autofocus: false,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          width: 270,
                          height: 50,
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            controller: confirmPassController,
                            obscureText: true,
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'validate password conform';
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
                                    AssetImage('assets/images/password_icon.png'),
                                    height: 20,
                                    width: 20,
                                  ),
                                ),
                                hintText: ' Confirm Password',
                                hintStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w400)),
                            autofocus: false,
                          ),
                        ),

                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 270,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xFF3D3D71),
                          ),
                          child: FlatButton(

                            onPressed: () => {
                              if (_formKey.currentState.validate()){
                              showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return EnterOTP();
                              })
                              }
                              else{
                                print("plase provide")
                              }
                            },


                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                //  Image.asset('assets/images/trackflight.png',
                                //   width: 0, height: 0),
                                Text(
                                  'SUBMIT',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
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



class EnterOTP extends StatelessWidget{
  final _formKey = GlobalKey<FormState>();
  final enterController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Container(
          key: _formKey,
            height: 180,
            //width: 400,
            child: Column(
              children: [
                SizedBox(height: 25,),
                Container(
                  width: 250,
                  height: 50,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    //obscureText: true,
                    controller: enterController,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'please enter otp verify';
                      }
                      return null;
                    },
                    cursorColor: Color(0xFF3D3D71),
                    style: TextStyle(color: Color(0xFF3D3D71),fontSize: 18),
                    decoration: InputDecoration(
                        fillColor: Color(0xFFF8F8F8),
                        border: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Color(0xFFD4D4D4)),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Color(0xFFD4D4D4)),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(
                              top: 15.0, bottom: 15.0),
                          child: Image(
                            image:
                            AssetImage('assets/images/enterotpicon.png'),
                            height: 20,
                            width: 20,
                          ),
                        ),
                        hintText: 'Enter OTP',
                        hintStyle: TextStyle(
                            color: Color(0xFF3D3D71),  fontSize: 15,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400)),
                    autofocus: false,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xFF3D3D71),
                  ),
                  child: FlatButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        //  Image.asset('assets/images/trackflight.png',
                        //   width: 0, height: 0),
                        Text(
                          'SUBMIT',
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
        )
    );
  }
}
