import 'package:flutter/material.dart';

import 'color_extension.dart';

class RoundButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  const RoundButton({super.key, required this.title,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
                height: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(color: Tcolor.primary, borderRadius: BorderRadius.circular(28),
              ),
      
               child: Text(
                title,
                style: TextStyle(color: Tcolor.white, fontSize: 16, fontWeight: FontWeight.w600),),
      ),
    );
  }
}