import 'package:flutter/material.dart';
import 'package:job_seeker_app/theme/app_color.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Color? color;
  final Color bdColor;
  final Color? txtColor;
  final VoidCallback onTap;
  CustomButton({super.key,
    required this.title,
    required this.onTap,
    this.color = AppColor.blackColor,
    this.txtColor = Colors.white,
    this.bdColor = AppColor.blackColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 45,
        width: double.infinity,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: bdColor)
        ),
        child: Center(
          child: Text(title,style: TextStyle(color: txtColor,fontSize: 16,fontWeight: FontWeight.w600),),
        ),

      ),
    );
  }
}
