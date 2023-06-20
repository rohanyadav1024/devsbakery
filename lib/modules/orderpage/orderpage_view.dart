import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sctrails/resources/app_colors.dart';
import 'package:sctrails/resources/app_strings.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: PreferredSize(
    preferredSize:const Size.fromHeight(65),
    child: AppBar(centerTitle: true,
    title:const Text(AppStrings.neworder),
    backgroundColor: AppColors.green,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),)),);
  }
}