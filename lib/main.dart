import 'package:commerce_shop/bottom_nav_bar.dart';
import 'package:commerce_shop/constants/colors.dart';
import 'package:commerce_shop/providers/add_to_cart_provider.dart';
import 'package:commerce_shop/providers/favorite_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // add all my providers
        ChangeNotifierProvider(create: (_) => CartProvider()),
        ChangeNotifierProvider(create: (_) => FavoriteProvider()),
      ],
    child: MaterialApp(
      title: 'commerce Shop',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: kprimaryColor),
        textTheme: GoogleFonts.poppinsTextTheme(),
        useMaterial3: true,
      ),
      home: const BottomNavBarScreen (title: 'Flutter Demo Home Page'),
    ),
    );
  }
}
