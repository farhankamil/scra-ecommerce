import 'package:flutter/material.dart';
import 'package:scra/pages/cart_page.dart';
import 'package:scra/pages/checkout_page.dart';
import 'package:scra/pages/checkout_success_pages.dart';
import 'package:scra/pages/detail_chat_page.dart';
import 'package:scra/pages/home/edit_profile_page.dart';
import 'package:scra/pages/home/main_page.dart';
import 'package:scra/pages/product_page.dart';
import 'package:scra/pages/sign_in_page.dart';
import 'package:scra/pages/sign_up_page.dart';
import 'package:scra/pages/splash_page.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashPage(),
        '/sign-in': (context) => const SignInPage(),
        '/sign-up': (context) => const SignUpPage(),
        '/home': (context) => const MainPage(),
        '/detail-chat': (context) => const DetailChatPage(),
        '/edit-profile': (context) => const EditProfilePage(),
        '/product': (context) => const ProductPage(),
        '/cart': (context) => const CartPage(),
        '/checkout': (context) => const CheckoutPage(),
        '/checkout-succes': (context) => const CheckoutSuccesPage(),
      },
    );
  }
}
