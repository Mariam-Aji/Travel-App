// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import 'login_screen.dart';

// class RegisterScreen extends StatefulWidget {
//   const RegisterScreen({Key? key}) : super(key: key);

//   @override
//   State<RegisterScreen> createState() => _RegisterScreenState();
// }

// class _RegisterScreenState extends State<RegisterScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         padding: EdgeInsets.symmetric(horizontal: 20),
//         child: Column(
//           children: [
//             SizedBox(
//               height: 100,
//               width: 450,
//             ),
//             Text(
//               'Reset your password',
//               style: TextStyle(
//                 fontSize: 35,
//                 fontWeight: FontWeight.w500,
//                 color: Color(0xff001c30),
//                 fontFamily: "pacifico",
//               ),
//             ),
//             SizedBox(
//               height: 55,
//             ),
//             OTP(),
//             SizedBox(
//               height: 10,
//             ),
//             // Text(
//             //   'You did not receive a message?',
//             //   style: TextStyle(
//             //     color: Color(0xff176B87),
//             //     fontFamily: "K2D"
//             //   ),
//             // ),
//             // TextButton(
//             //   onPressed: () {},
//             //   child: Text(
//             //     'Resend The code ',
//             //     style: TextStyle(
//             //       color: Color(0xff001c30),
//             //       fontWeight: FontWeight.w300,
//             //         fontFamily: "K2D",
//             //     ),
//             //   ),
//             // ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class OTP extends StatefulWidget {
//   const OTP({Key? key}) : super(key: key);

//   @override
//   State<OTP> createState() => _OTPState();
// }

// class _OTPState extends State<OTP> {
//   TextEditingController pin2Controller = TextEditingController();
//   TextEditingController pin3Controller = TextEditingController();
//   TextEditingController pin4Controller = TextEditingController();
//   TextEditingController pin5Controller = TextEditingController();
//   TextEditingController pin6Controller = TextEditingController();
//   TextEditingController pin7Controller = TextEditingController();
//   late FocusNode pin2FocusNode;
//   late FocusNode pin3FocusNode;
//   late FocusNode pin4FocusNode;
//   late FocusNode pin5FocusNode;
//   late FocusNode pin6FocusNode;
//   late FocusNode pin7FocusNode;

//   void nextField({required String value, required FocusNode focusNode}) {
//     if (value.length == 1) {
//       FocusScope.of(context).requestFocus(focusNode);
//     }
//   }

//   void initState() {
//     super.initState();
//     pin2FocusNode = FocusNode();
//     pin3FocusNode = FocusNode();
//     pin4FocusNode = FocusNode();
//     pin5FocusNode = FocusNode();
//     pin6FocusNode = FocusNode();
//     pin7FocusNode = FocusNode();
//   }

//   @override
//   void dispose() {
//     pin2Controller.dispose();
//     pin3Controller.dispose();
//     pin4Controller.dispose();
//     pin5Controller.dispose();
//     pin6Controller.dispose();
//     pin2FocusNode.dispose();
//     pin3FocusNode.dispose();
//     pin4FocusNode.dispose();
//     pin5FocusNode.dispose();
//     pin6FocusNode.dispose();
//     pin7FocusNode.dispose();

//     super.dispose();
//   }

//   Widget build(BuildContext context) {
//     return Form(
//       child: Column(
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               SizedBox(
//                 width: 50,
//                 height: 63,
//                 child: TextFormField(
//                   keyboardType: TextInputType.number,
//                   focusNode: pin2FocusNode,
//                   controller: pin2Controller,
//                   cursorColor: Colors.white24,
//                   obscureText: true,
//                   style: TextStyle(
//                     fontSize: 24,
//                   ),
//                   textAlign: TextAlign.center,
//                   decoration: InputDecoration(
//                     filled: true,
//                     fillColor: Color(0xffDAFFFB),
//                     enabledBorder: OutlineInputBorder(
//                       borderSide: BorderSide(
//                         color: Color(0xff001c30),
//                       ),
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                       borderSide: BorderSide(
//                         color: Color(0xff001c30),
//                       ),
//                     ),
//                     contentPadding: EdgeInsets.symmetric(vertical: 15),
//                   ),
//                   onChanged: (value) {
//                     nextField(value: value, focusNode: pin3FocusNode);
//                   },
//                 ),
//               ),
//               SizedBox(
//                 width: 50,
//                 height: 63,
//                 child: TextFormField(
//                   keyboardType: TextInputType.number,
//                   focusNode: pin3FocusNode,
//                   controller: pin3Controller,
//                   cursorColor: Colors.white24,
//                   obscureText: true,
//                   style: TextStyle(
//                     fontSize: 24,
//                   ),
//                   textAlign: TextAlign.center,
//                   decoration: InputDecoration(
//                     filled: true,
//                     fillColor: Color(0xffDAFFFB),
//                     enabledBorder: OutlineInputBorder(
//                       borderSide: BorderSide(
//                         color: Color(0xff001c30),
//                       ),
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                       borderSide: BorderSide(
//                         color: Color(0xff001c30),
//                       ),
//                     ),
//                     contentPadding: EdgeInsets.symmetric(vertical: 15),
//                   ),
//                   onChanged: (value) {
//                     nextField(value: value, focusNode: pin4FocusNode);
//                   },
//                 ),
//               ),
//               SizedBox(
//                 width: 50,
//                 height: 63,
//                 child: TextFormField(
//                   focusNode: pin4FocusNode,
//                   controller: pin4Controller,
//                   keyboardType: TextInputType.number,
//                   cursorColor: Colors.white24,
//                   obscureText: true,
//                   style: TextStyle(
//                     fontSize: 24,
//                   ),
//                   textAlign: TextAlign.center,
//                   decoration: InputDecoration(
//                     filled: true,
//                     fillColor: Color(0xffDAFFFB),
//                     enabledBorder: OutlineInputBorder(
//                       borderSide: BorderSide(
//                         color: Color(0xff001c30),
//                       ),
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                       borderSide: BorderSide(
//                         color: Color(0xff001c30),
//                       ),
//                     ),
//                     contentPadding: EdgeInsets.symmetric(vertical: 15),
//                   ),
//                   onChanged: (value) {
//                     nextField(value: value, focusNode: pin5FocusNode);
//                   },
//                 ),
//               ),
//               SizedBox(
//                 width: 50,
//                 height: 63,
//                 child: TextFormField(
//                   focusNode: pin5FocusNode,
//                   controller: pin5Controller,
//                   keyboardType: TextInputType.number,
//                   cursorColor: Colors.white24,
//                   obscureText: true,
//                   style: TextStyle(
//                     fontSize: 24,
//                   ),
//                   textAlign: TextAlign.center,
//                   decoration: InputDecoration(
//                     filled: true,
//                     fillColor: Color(0xffDAFFFB),
//                     enabledBorder: OutlineInputBorder(
//                       borderSide: BorderSide(
//                         color: Color(0xff001c30),
//                       ),
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                       borderSide: BorderSide(
//                         color: Color(0xff001c30),
//                       ),
//                     ),
//                     contentPadding: EdgeInsets.symmetric(vertical: 15),
//                   ),
//                   onChanged: (value) {
//                     nextField(value: value, focusNode: pin6FocusNode);
//                   },
//                 ),
//               ),
//               SizedBox(
//                 width: 50,
//                 height: 63,
//                 child: TextFormField(
//                   keyboardType: TextInputType.number,
//                   focusNode: pin6FocusNode,
//                   controller: pin6Controller,
//                   obscureText: true,
//                   cursorColor: Colors.white24,
//                   style: TextStyle(
//                     fontSize: 24,
//                   ),
//                   textAlign: TextAlign.center,
//                   decoration: InputDecoration(
//                     filled: true,
//                     fillColor: Color(0xffDAFFFB),
//                     enabledBorder: OutlineInputBorder(
//                       borderSide: BorderSide(
//                         color: Color(0xff001c30),
//                       ),
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                       borderSide: BorderSide(
//                         color: Color(0xff001c30),
//                       ),
//                     ),
//                     contentPadding: EdgeInsets.symmetric(vertical: 15),
//                   ),
//                   onChanged: (value) {
//                     nextField(value: value, focusNode: pin7FocusNode);
//                   },
//                 ),
//               ),
//               SizedBox(
//                 width: 50,
//                 height: 63,
//                 child: TextFormField(
//                   focusNode: pin7FocusNode,
//                   controller: pin7Controller,
//                   keyboardType: TextInputType.number,
//                   cursorColor: Color(0xff001c30),
//                   obscureText: true,
//                   style: TextStyle(
//                     fontSize: 24,
//                   ),
//                   textAlign: TextAlign.center,
//                   decoration: InputDecoration(
//                     filled: true,
//                     fillColor: Color(0xffDAFFFB),
//                     enabledBorder: OutlineInputBorder(
//                       borderSide: BorderSide(
//                         color: Color(0xff001c30),
//                       ),
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                       borderSide: BorderSide(
//                         color: Color(0xff001c30),
//                       ),
//                     ),
//                     contentPadding: EdgeInsets.symmetric(vertical: 15),
//                   ),
//                   onChanged: (value) {
//                     pin7FocusNode.unfocus();
//                   },
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(
//             height: 50,
//           ),
//           Container(
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(15),
//               color: Color(0xff001c30),
//             ),
//             width: 242,
//             height: 59,
//             child: MaterialButton(
//               onPressed: () {
//                 Get.to(Login());
//               },
//               child: const Text(
//                 'Reset',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 30,
//                   fontWeight: FontWeight.bold,
//                   fontFamily: "pacifico",
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
