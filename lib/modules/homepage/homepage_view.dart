import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sctrails/modules/orderpage/orderpage_view.dart';
import 'package:sctrails/resources/app_colors.dart';
import 'package:sctrails/resources/app_images.dart';
import 'package:sctrails/resources/app_strings.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Scaffold(
      appBar: AppBar(
          backgroundColor: AppColors.green,
          title: const Text(
            AppStrings.homepage,
            style: TextStyle(color: AppColors.white),
          ),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.add_shopping_cart_outlined,
                color: Colors.white,
              ),
              onPressed: () {
                // do something
              },
            )
          ]),
      // body: const Drawer(),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: [
              UserAccountsDrawerHeader(
                accountName: const Text(AppStrings.accname),
                accountEmail: const Text(AppStrings.accemail),
                currentAccountPicture: const CircleAvatar(
                    child: ClipOval(
                  child: Image(
                      image: AssetImage(AppImage.applogo), fit: BoxFit.cover),
                )),
                decoration: BoxDecoration(color: AppColors.green),
              ),
              const ListTile(
                leading: Icon(Icons.bakery_dining_sharp),
                title: Text(AppStrings.company),
                onTap: null,
              ),
              const ListTile(
                leading: Icon(Icons.list),
                title: Text(AppStrings.addorder),
                onTap: null,
              ),
              const ListTile(
                leading: Icon(Icons.refresh),
                title: Text(AppStrings.refreshproduct),
                onTap: null,
              ),
              const ListTile(
                leading: Icon(Icons.logout),
                title: Text(AppStrings.logout),
                onTap: null,
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Get.to(() => const OrderPage());
          },
          backgroundColor: AppColors.green,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(18))),
          label: const Text(AppStrings.addorder,
          style: TextStyle(fontSize: 15,
          color: AppColors.white),)),
    ));
  }
}
