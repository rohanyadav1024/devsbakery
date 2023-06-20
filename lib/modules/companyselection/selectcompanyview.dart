import 'package:flutter/material.dart';
import 'package:sctrails/resources/app_colors.dart';
import 'package:sctrails/resources/app_strings.dart';

import '../../utils/widgets/app_btn.dart';
import '../../utils/widgets/companyclass.dart';

// ignore: must_be_immutable
class CompanyNamePage extends StatelessWidget {
  CompanyNamePage({super.key});
  late List<CompanySelection> companySelections;

  void initState() {
    companySelections = CompanySelection.getUsers();
  }

  Future<List<Widget>> createCompanySelection() async {
    List<Widget> widgets = [];

    for (CompanySelection companySelection in companySelections) {
      print(companySelection.companyName);
      widgets.add(RadioListTile(
          value: companySelection,
          groupValue: companySelection,
          title: Text(companySelection.companyName),
          onChanged: ((currentCompanySelection) {}),
          activeColor: AppColors.green,));
    }
    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    initState();
    return Container(
      color: Colors.white,
      height: double.infinity,
      width: double.infinity,
      child: Container(
        child: SafeArea(
          child: Scaffold(
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(80),
              child: AppBar(
                title: const Text(
                  AppStrings.company,
                  style: TextStyle(fontSize: 27),
                ),
                backgroundColor: AppColors.green,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(35),
                      bottomLeft: Radius.circular(35)),
                ),
              ),
            ),
            // extendBodyBehindAppBar: false,
           
            body: Center(
               
              child: FutureBuilder<List<Widget>>(
                initialData: const [],
                future: createCompanySelection(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, int index) {
                        return snapshot.data![index];
                      },
                    );
                  }
      
                  return const CircularProgressIndicator();
                },
                
              ),
              
            )
          
          ),
          
        ),

      ),
    
    
    );
  }
}
