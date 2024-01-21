// import 'package:center_system/Feature/presentation/view/Regiser.dart';
// import 'package:flutter/material.dart';

// class Home_view extends StatefulWidget {
//   const Home_view({super.key});
//   static String routeName = "/Home";

//   @override
//   State<Home_view> createState() => _Home_viewState();
// }

// class _Home_viewState extends State<Home_view> {
//   int currentIndex = 0;
//   late double height;
//   late double width;
//   List<Widget> tabs = const [
//     // Home_view(),
//     Register_Screen(),
//     Register_Screen(),

//     Register_Screen(),
//     Register_Screen(),

//     // Cart_Body(),
//     // Wallet_Body()
//   ];

//   @override
//   Widget build(BuildContext context) {
//     height = MediaQuery.of(context).size.height;
//     width = MediaQuery.of(context).size.width;

//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: tabs[currentIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         type: BottomNavigationBarType.fixed,
//         currentIndex: currentIndex,
//         onTap: (index) {
//           currentIndex = index;
//           setState(() {});
//         },
//         showSelectedLabels: false,
//         showUnselectedLabels: false,
//         items: [
//           BottomNavigationBarItem(
//               backgroundColor:
//                   Theme.of(context).bottomNavigationBarTheme.backgroundColor,
//               label: "Home",
//               icon: buildBottomIcon(0, "Home", "assets/Icons/Home.svg")),
//           BottomNavigationBarItem(
//               backgroundColor:
//                   Theme.of(context).bottomNavigationBarTheme.backgroundColor,
//               label: "Wishlist",
//               icon:
//                   buildBottomIcon(1, "Wishlist", "assets/Icons/Heart (1).svg")),
//           BottomNavigationBarItem(
//               backgroundColor:
//                   Theme.of(context).bottomNavigationBarTheme.backgroundColor,
//               label: "Cart",
//               icon: buildBottomIcon(2, "Cart", "assets/Icons/cartnavbtn.svg")),
//           BottomNavigationBarItem(
//               backgroundColor:
//                   Theme.of(context).bottomNavigationBarTheme.backgroundColor,
//               label: "Wallet",
//               icon: buildBottomIcon(3, "Wallet", "assets/Icons/camera.svg")),
//         ],
//       ),
//     );
//   }

//   Widget buildBottomIcon(double index, String label, String imagePath) {
//     return
//         // index
//         // !=
//         //  currentIndex
//         // ? Padding(
//         // padding: EdgeInsets.symmetric(vertical: height * 0.004),
//         // child: SvgPicture.asset(imagePath,
//         // height: height * 0.032, color: const Color(0xff8F959E)),
//         // )
//         // :
//         Text(
//       label,
//       style: const TextStyle(
//           fontSize: 18, fontWeight: FontWeight.w500, color: Colors.amber),
//     );
//   }
// }
