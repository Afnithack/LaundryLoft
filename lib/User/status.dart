// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class Orderst extends StatelessWidget {
//
//   final int ticks;
//
//   Orderst({required this.ticks});
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: <Widget>[
//         tick1(),
//         spacer(),
//         line(),
//         spacer(),
//         tick2(),
//         spacer(),
//         line(),
//         spacer(),
//         tick3(),
//         spacer(),
//         line(),
//         spacer(),
//         tick4(),
//       ],
//     );
//
//
//   }
//
//   Widget tick(bool isChecked){
//     return isChecked?Icon(Icons.check_circle,color: Colors.blue,):Icon(Icons.radio_button_unchecked, color: Colors.blue,);
//   }
//
//   Widget tick1() {
//     return this.ticks>0?tick(true):tick(false);
//   }
//   Widget tick2() {
//     return this.ticks>1?tick(true):tick(false);
//   }
//   Widget tick3() {
//     return this.ticks>2?tick(true):tick(false);
//   }
//   Widget tick4() {
//     return this.ticks>3?tick(true):tick(false);
//   }
//
//   Widget spacer() {
//     return Container(
//       width: 5.0,
//     );
//   }
//
//   Widget line() {
//     return Container(
//
//       color: Colors.blue,
//       height: 5.0,
//       width: 50.0,
//     );
//   }
// }