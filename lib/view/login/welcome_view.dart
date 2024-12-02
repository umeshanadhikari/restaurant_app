import 'package:flutter/material.dart';
import 'package:restaurant_app/common/color_extension.dart';

import '../../common/rount_button.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  Widget build(BuildContext context) {

    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
          
            children: [

              Image.asset(
                "assets/img/welcome_top_shape.png",
                width: media.width 
                ),

                Image.asset(
            "assets/img/app_logo.png",
            width: media.width * 0.55,
            height: media.width * 0.55,
            fit: BoxFit.contain,
          ),
          
              
            ],
          ),

          SizedBox(height: media.width*0.001,),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: RoundButton(title: "Login", onPressed:(){

            },),
          ),

          SizedBox(height: media.width*0.05,),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: RoundButton(title: "Create an Account", onPressed:(){

            },),
          ),
        ],
      ),
    );
  }
}