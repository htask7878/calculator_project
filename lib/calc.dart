// import 'package:flutter/material.dart';
//
// class cal extends StatefulWidget {
//   const cal({Key? key}) : super(key: key);
//
//   @override
//   State<cal> createState() => _calState();
// }
//
// class _calState extends State<cal> {
//   List<String> b = List.filled(16, "");
//
//   StringBuffer stor = new StringBuffer("");
//
//   //String strtext = "0";
//   int first = 0, secound = 0;
//   int sign = 0, ans = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "Simple Calculator",
//           style: TextStyle(fontSize: 20, color: Colors.black87),
//         ),
//         backgroundColor: Colors.white,
//       ),
//       backgroundColor: Colors.deepPurple[100],
//       body: Column(
//         children: [
//           Expanded(
//               child: Container(
//                 child: Text(
//                   "$stor",
//                   style: TextStyle(fontSize: 50),
//                 ),
//               )),
//           Expanded(
//               flex: 2,
//               child: Container(
//                 color: Colors.white,
//                 child: Column(
//                   children: [
//                     Expanded(
//                         child: Row(
//                           children: [
//                             Expanded(
//                               child: InkWell(
//                                   onTap: (() {
//                                     stor.clear();
//                                     stor.write("");
//
//                                     setState(() {});
//                                   }),
//                                   child: Container(
//                                     height: double.infinity,
//                                     margin: EdgeInsets.all(10),
//                                     alignment: Alignment.center,
//                                     // color: Colors.deepPurple,
//                                     child: Text("C"),
//                                     decoration: BoxDecoration(
//                                       color: Colors.deepPurple,
//                                       borderRadius: BorderRadius.circular(10),
//                                     ),
//                                   )),
//                             ),
//                             Expanded(
//                               child: InkWell(
//                                   onTap: (() {
//                                     setState(() {});
//                                   }),
//                                   child: Container(
//                                     height: double.infinity,
//                                     margin: EdgeInsets.all(10),
//                                     alignment: Alignment.center,
//                                     // color: Colors.deepPurple,
//                                     child: Text("DEL"),
//                                     decoration: BoxDecoration(
//                                       color: Colors.deepPurple,
//                                       borderRadius: BorderRadius.circular(10),
//                                     ),
//                                   )),
//                             ),
//
//                             button2("/", Colors.deepPurpleAccent),
//                             button2("+", Colors.deepPurpleAccent),
//                           ],
//                         )),
//                     Expanded(
//                         child: Row(
//                           children: [
//                             button(7, Colors.white),
//                             button(8, Colors.white),
//                             button(9, Colors.deepPurpleAccent),
//                             button2("-", Colors.deepPurpleAccent),
//                           ],
//                         )),
//                     Expanded(
//                         child: Row(
//                           children: [
//                             button(6, Colors.white),
//                             button(5, Colors.white),
//                             button(4, Colors.deepPurpleAccent),
//                             button2("*", Colors.deepPurpleAccent),
//                           ],
//                         )),
//                     Expanded(
//                         child: Row(
//                           children: [
//                             button(1, Colors.white),
//                             button(2, Colors.white),
//                             button(3, Colors.deepPurpleAccent),
//                             Expanded(
//                               child: InkWell(
//                                   onTap: (() {
//                                     secound = int.parse(stor.toString());
//                                     stor.clear();
//                                     if (sign == 1) {
//                                       ans = first + secound;
//                                       // stor=ans as StringBuffer;
//                                       stor.write("$ans");
//                                     }
//                                     if (sign == 2) {
//                                       ans = first - secound;
//                                       // stor=ans as StringBuffer;
//                                       stor.write("$ans");
//                                     }
//                                     if (sign == 3) {
//                                       ans = first * secound;
//                                       // stor=ans as StringBuffer;
//                                       stor.write("$ans");
//                                     }
//                                     if (sign == 4) {
//                                       ans = first ~/ secound;
//                                       // stor=ans as StringBuffer;
//                                       stor.write("$ans");
//                                     }
//                                     setState(() {});
//                                   }),
//                                   child: Container(
//                                     height: double.infinity,
//                                     margin: EdgeInsets.all(10),
//                                     alignment: Alignment.center,
//                                     // color: Colors.deepPurple,
//                                     child: Text("="),
//                                     decoration: BoxDecoration(
//                                       color: Colors.deepPurple,
//                                       borderRadius: BorderRadius.circular(10),
//                                     ),
//                                   )),
//                             )
//                           ],
//                         )),
//                   ],
//                 ),
//               )),
//         ],
//       ),
//     );
//   }
//   button(int i, Color c) {
//     return Expanded(
//       child: InkWell(
//           onTap: (() {
//             stor.write("$i");
//             setState(() {});
//           }),
//           child: Container(
//             height: double.infinity,
//             margin: EdgeInsets.all(10),
//             child: Text(
//               "$i",
//               style: TextStyle(fontSize: 30),
//             ),
//             alignment: Alignment.center,
//             decoration: BoxDecoration(
//               color: Colors.deepPurple,
//               borderRadius: BorderRadius.circular(10),
//             ),
//           )),
//     );
//   }
//   button2(String str, Color c) {
//     return Expanded(
//       child: InkWell(
//           onTap: (() {
//             if (str == "+" || str == "-" || str == "*" || str == "/") {
//               first = int.parse(stor.toString());
//               stor.clear();
//               if (str == "+") sign = 1;
//               if (str == "-") sign = 2;
//               if (str == "*") sign = 3;
//               if (str == "/") sign = 4;
//             }
//
//             setState(() {});
//           }),
//           child: Container(
//             height: double.infinity,
//             margin: EdgeInsets.all(10),
//             child: Text(
//               str,
//               style: TextStyle(fontSize: 30),
//             ),
//             alignment: Alignment.center,
//             decoration: BoxDecoration(
//               color: Colors.deepPurple,
//               borderRadius: BorderRadius.circular(10),
//             ),
//           )),
//     );
//   }
// }
