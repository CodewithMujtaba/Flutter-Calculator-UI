
import 'package:calculator_app/constant.dart';
import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onPress;
  const Mybutton({super.key,required this.title,this.color = const Color(0xffa5a5a5),required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: InkWell(
          onTap: onPress,
          child: Container(
              height: 70,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: color,
              ),
              child : Center(child: Text(title,style: kfontsize,))
          ),
        ),
      ),
    );
  }
}