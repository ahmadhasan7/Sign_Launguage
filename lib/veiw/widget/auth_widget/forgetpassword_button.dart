import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CustomForgetPassword extends StatelessWidget {
  final String title;
  final String buttonTitle;
  final void Function() onPressedButton;
  const CustomForgetPassword({super.key, required this.title,required this.buttonTitle, required this.onPressedButton});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:MainAxisAlignment.end,
      children: [
         Text(title),
        TextButton(onPressed: onPressedButton, child:Text(buttonTitle,),style: TextButton.styleFrom(
            padding:  EdgeInsets.only(left: 2.w,right: 10.w)
        ),)
      ],
    );
  }
}


