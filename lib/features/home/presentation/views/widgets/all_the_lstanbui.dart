// import 'package:app_todos/core/utils/colorss.dart';
// import 'package:flutter/material.dart';

// class AllTheLstanbui extends StatefulWidget {
//   final String varTimeText;
//   final String varTitleText;
//   final String varDataText;
//   final Color varColorText;
//   final TextDecoration varDecorationText;
//   final Function varOnTapDoneOrnot;
//   final Function varOnTapDelete;
//   final Icon varIconCheck;
//   final Color varColorIconCheck;
//   // final IconData varIconDelete;

//   const AllTheLstanbui({
//     super.key,
//     required this.varTimeText,
//     required this.varColorText,
//     required this.varDecorationText,
//     required this.varTitleText,
//     required this.varDataText,
//     required this.varOnTapDoneOrnot,
//     required this.varOnTapDelete,
//     required this.varIconCheck,
//     required this.varColorIconCheck,

//   });

//   @override
//   State<AllTheLstanbui> createState() => _AllTheLstanbuiState();
// }

// class _AllTheLstanbuiState extends State<AllTheLstanbui> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.symmetric(vertical: 1,horizontal: 5),
//       decoration: BoxDecoration(
//         color: Color.fromARGB(255, 199, 192, 192),
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: ListTile(
        
//         leading: CircleAvatar(
//           radius: 30,
//           backgroundColor: Colorss.backgroundColors,
//           child: Text(
//             '${widget.varTimeText}',
//             style: TextStyle(
//               color: widget.varColorText,
//               fontSize: 12,
//               decoration: widget.varDecorationText,
              
//             ),
//             textAlign: TextAlign.center,
//           ),
//         ),
//         title: Text('${widget.varTitleText}',style: TextStyle(fontWeight: FontWeight.bold,
//         decoration: widget.varDecorationText,
//         color: widget.varColorText
//         ),),
//         subtitle: Text('${widget.varDataText}',style: TextStyle(
//           decoration: widget.varDecorationText,
//           color: widget.varColorText
//         ),),
//         trailing: Row(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             IconButton(
//               icon: widget.varIconCheck,
//               color: widget.varColorIconCheck,
              
//               // Icon(Icons.check_box, color: Colors.green),
//               onPressed:widget.varOnTapDoneOrnot(),
//             ),
//             IconButton(
//               icon: Icon(Icons.delete, color: Colors.grey),
//               onPressed:widget.varOnTapDelete(),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }






// Container(
//         alignment: Alignment.topLeft,
//         margin: EdgeInsets.all(10),
//         width: double.infinity,
//         height: 90,
//         decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(10),
//             color: Colorss.backgroundColorAllTheLstanbui),
//         child: Row(
//           children: [
//             Container(
//               margin: EdgeInsets.all(10),
//               child: CircleAvatar(
//                 radius: 32,
//                 backgroundColor: Colorss.backgroundColors,
//                 child: Container(
//                     alignment: Alignment.center,
//                     child: Text(
//                       '${widget.varTimeText}',
//                       style: TextStyle(
//                           color: widget.varColorText,
//                           fontSize: 12,
//                           fontWeight: FontWeight.bold,
//                           fontFamily: 'Regular',
//                           decoration: widget.varDecorationText),
//                     )),
//               ),
//             ),
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Container(
//                   margin: EdgeInsets.only(right: 75),
//                   child: Text(
//                     'Title :${widget.varTitleText}',
//                     style: TextStyle(
//                       color: widget.varColorText,
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                       fontFamily: 'Regular',
//                       decoration: widget.varDecorationText,
//                     ),
//                   ),
//                 ),
//                 Row(
//                   children: [
//                     Container(
//                         margin: EdgeInsets.only(left: 0),
//                         child: Text(
//                           'Data :${widget.varDataText}',
//                           style: TextStyle(
//                             color: widget.varColorText,
//                             fontSize: 15,
//                             fontFamily: 'Regular',
//                             decoration: widget.varDecorationText,
//                           ),
//                         )),
//                     Container(
//                       margin: EdgeInsets.only(left: 0),
//                       child: IconButton(
//                         onPressed: widget.varOnTapDoneOrnot(),

//                         icon: widget.varIconCheck,
//                         color: widget.varColorIconCheck,
//                       ),
//                     ),
//                     IconButton(
//                         onPressed: widget.varOnTapDelete(),
//                         icon: Icon(
//                           widget.varIconDelete,
//                           color: Colorss.colorIConDelete,
//                         ))
//                   ],
//                 ),
//               ],
//             ),
//           ],
//         ));