import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sctrails/modules/companyselection/selectcompanyview.dart';
import 'package:sctrails/modules/login/login_view.dart';
import 'package:sctrails/modules/orderpage/orderpage_view.dart';
import 'package:sctrails/modules/signup/signup_view.dart';

import 'modules/forgotpassword/forgopass_view.dart';
import 'modules/homepage/homepage_view.dart';
import 'resources/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      
      home:const HomePage(),
      // initialRoute: AppRoutes.login,
      getPages: [
        GetPage(name: AppRoutes.login, page: () => const LoginPage()),
        GetPage(name: AppRoutes.companyName, page: () => CompanyNamePage()),
        GetPage(name: AppRoutes.forgotPass, page: () =>const ForgotPage()),
        GetPage(name: AppRoutes.signup, page: () => const SignUpPage()),
        GetPage(name: AppRoutes.homePage, page: () => const HomePage()),
        
      ],
    );
  }
}