import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sctrails/modules/companyselection/selectcompanyview.dart';
import 'package:sctrails/modules/forgotpassword/forgopass_view.dart';
import 'package:sctrails/modules/homepage/homepage_view.dart';
import 'package:sctrails/modules/signup/signup_view.dart';
import 'package:sctrails/resources/app_colors.dart';
import 'package:sctrails/resources/app_images.dart';
import 'package:sctrails/resources/app_strings.dart';
import 'package:sctrails/utils/widgets/app_btn.dart';
import 'package:sctrails/utils/widgets/app_txtfield.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(AppImage.background), fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(90, 80, 90, 40),
                child: Image.asset(
                  AppImage.applogo,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(height: 13),
              TxtField(
                obscure: false,
                icon: const Icon(Icons.phone),
                hint: AppStrings.mobno,
                keyboard: TextInputType.phone,
              ),
              const SizedBox(height: 5),
              TxtField(
                obscure: true,
                hint: AppStrings.password,
                icon: const Icon(Icons.lock),
                keyboard: TextInputType.visiblePassword,
              ),
              const SizedBox(
                height: 13,
              ),
              GestureDetector(
                onTap: () async {
                  Get.to(() => const ForgotPage());
                },
                child: const Text(
                  AppStrings.forgotpass,
                  style: TextStyle(
                      color: AppColors.black2,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
              ),
              const SizedBox(height: 50),
              AppBtn(
                onpress: () {
                  Get.to(() => const HomePage());
                  // Get.to(() => CompanyNamePage());
                  print('object');
                },
                height: 50,
                width: 275,
                radius: 30,
                text: AppStrings.login,
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    AppStrings.account,
                    style: TextStyle(color: AppColors.black2, fontSize: 16),
                  ),
                  GestureDetector(
                    onTap: () async {
                      Get.to(() => const SignUpPage());
                    },
                    child: const Text(
                      AppStrings.signup,
                      style: TextStyle(
                          color: AppColors.brown,
                          fontSize: 16.5,
                          fontWeight: FontWeight.w700),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
