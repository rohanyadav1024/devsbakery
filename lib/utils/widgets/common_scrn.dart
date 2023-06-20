import 'package:flutter/material.dart';
import 'package:sctrails/resources/app_colors.dart';
import 'package:sctrails/resources/app_images.dart';
import 'package:sctrails/resources/app_strings.dart';
import 'package:sctrails/utils/widgets/app_btn.dart';

import 'app_txtfield.dart';


class CommonScrn extends StatelessWidget {
  const CommonScrn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
                   Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/1.6,
                decoration: BoxDecoration(
                    image: const DecorationImage(image: AssetImage(AppImage.background),
                      fit: BoxFit.fill,),
                  color: AppColors.white1),),
                   Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/1.6,
                decoration:  BoxDecoration(
                  color: AppColors.green,
                  borderRadius: const BorderRadius.only(
                    bottomRight:Radius.circular(70)),),),
              Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/2.666, 
                decoration: BoxDecoration(
                  color: AppColors.green,
                    )), 
              ),
              Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/2.666, 
                decoration: BoxDecoration(
                    image: const DecorationImage(image: AssetImage(AppImage.background),
                      fit: BoxFit.cover,),
                  color: AppColors.white1,
                  borderRadius:const BorderRadius.only(
                    topLeft: Radius.circular(50),)
                 ) ), 
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(80, 80, 50, 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:  [
                     Text(AppStrings.createpass,
                    style: TextStyle(color: AppColors.white3,
                    fontSize: 25),),
                    const SizedBox(height: 25),
                    const Icon(Icons.lock_person,
                    size: 100,
                    color: AppColors.brown,)
                  ],
                ),
              ),
        
           Column(
                mainAxisAlignment:MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [ Padding(
                  padding: const EdgeInsets.fromLTRB(33,180,30,2),
                  child: Container(
                    height: 400,
                    width: 350,
                    decoration: BoxDecoration(
                       color: AppColors.white,
                      borderRadius: BorderRadius.circular(14)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(height: 18),
                              TxtField(
                                obscure: false,
                                icon: const Icon(Icons.phone),
                                hint: AppStrings.mobno,
                                keyboard: TextInputType.phone,
                              ),
                             
                              TxtField(
                                obscure: false,
                                icon: const Icon(Icons.password),
                                hint: AppStrings.otp,
                                keyboard: TextInputType.phone,
      
                              ),
                            
                              TxtField(
                                obscure: true,
                                icon: const Icon(Icons.lock),
                                hint: AppStrings.password,
                                keyboard: TextInputType.visiblePassword,
      
                              ),
                              
                              TxtField(
                                obscure: true,
                                icon: const Icon(Icons.lock),
                                hint: AppStrings.confirmpass,
                                keyboard: TextInputType.visiblePassword,
      
                                
                              ),
                              const SizedBox(height: 25),
                              AppBtn(
                               onpress: () {
                  print('object');
                },
                                height: 45,
                                width: 150,
                                radius: 8,
                                 text: AppStrings.signup,)
                                  ],
                          )),
                           
                      
                  ),
                  
                
              ],
      
           )
         
         
          ]),
          
         
         ),
      ),
       
        
    );
  }
}