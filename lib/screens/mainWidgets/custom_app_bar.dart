// import 'package:commerce_shop/constants/colors.dart';
// import 'package:flutter/material.dart';

// class CustomAppBar extends StatelessWidget {
//   const CustomAppBar({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         IconButton(
//           style: IconButton.styleFrom(
//             backgroundColor: kprimaryBackgroungColor,
//             padding: const EdgeInsets.all(15),
//           ),
//           onPressed: () {},
//           icon: Image.asset(
//             'images/icon.png',
//             height: 20,
//           ),
//         ),
//         Row(
//           children: [
//             Stack(
//               children: [
//                 IconButton(
//                   style: IconButton.styleFrom(
//                     backgroundColor: kprimaryBackgroungColor,
//                     padding: const EdgeInsets.all(10),
//                   ),
//                   onPressed: () {},
//                   icon: const Icon(
//                     Icons.shopping_cart_outlined,
//                     size: 30,
//                   ),
//                 ),
//                 Positioned(
//                   top: 5,
//                   right: 5,
//                   child: Container(
//                     width: 18,
//                     height: 18,
//                     alignment: Alignment.center,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10),
//                       color: kprimaryColor,
//                     ),
//                     child: const Text(
//                       '0',
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 14,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(width: 20),
//             IconButton(
//               style: IconButton.styleFrom(
//                 backgroundColor: kprimaryBackgroungColor,
//                 padding: const EdgeInsets.all(10),
//               ),
//               onPressed: () {},
//               icon: const Icon(
//                 Icons.notifications_outlined,
//                 size: 30,
//               ),
//             ),
//           ],
//         )
//       ],
//     );
//   }
// }