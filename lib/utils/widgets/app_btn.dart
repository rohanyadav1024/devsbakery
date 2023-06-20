import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../modules/companyselection/selectcompanyview.dart';
import '../../resources/app_colors.dart';

class AppBtn extends StatelessWidget {
  AppBtn({
    super.key,
    this.text, required this.onpress,
    this.height,
    this.width,
    this.radius,
  });

  String? text;
  VoidCallback onpress;
  double? height;
  double? width;
  double? radius;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height!,
        width: width,
        // decoration: BoxDecoration(
        //     color: AppColors.green, borderRadius: BorderRadius.circular(30)),
        child: ElevatedButton(
          // onPressed: () async {
          //   Get.to(() => const CompanyNamePage());
          // },
          onPressed: onpress,
          style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(
                AppColors.green,
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radius!),
              )),
              textStyle: const MaterialStatePropertyAll(
                  TextStyle(color: AppColors.black, fontSize: 20))),
          child: Text(
            text!,
          ),
        ));
  }
}
