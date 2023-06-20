import 'package:flutter/material.dart';
import 'package:sctrails/resources/app_colors.dart';

// ignore: must_be_immutable
class TxtField extends StatelessWidget {
  TxtField({
    super.key,
    this.obscure,
    // this.text,
    this.icon,
    this.hint,
    this.keyboard,
  });
  bool? obscure;
  // String? text;
  Widget? icon;
  String? hint;
  TextInputType? keyboard;

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                        color: AppColors.grey,
                        borderRadius: BorderRadius.circular(10)),
                    height: 45,
                    child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: TextFormField(
                          obscureText: obscure!,
                          keyboardType: keyboard,
                          style: const TextStyle(
                              color: AppColors.black1, fontSize: 18),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: icon,
                            hintText: hint,
                            hintStyle: const TextStyle(color: AppColors.black1),
                          ),
                        ))),
              )
            ],
          )),
    );
  }
}
//                 // validator: (value) {
//                 //   if (!GetUtils.isEmail(value!)) {
//                 //     return AppStrings.invalidemail;
//                 //   } else {
//                 //     return null;
//                 //   }

