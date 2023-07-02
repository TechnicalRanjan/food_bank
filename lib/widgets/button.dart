import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    required this.buttonTitle,
    required this.buttonStyle,
    required this.onButtonClick,
    required this.bgColor,
    this.width,
    this.height,
  });
  final String buttonTitle;
  final TextStyle buttonStyle;
  final Function() onButtonClick;
  final Color bgColor;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: bgColor,
      borderRadius: BorderRadius.circular(50),
      child: InkWell(
        onTap: onButtonClick,
        borderRadius: BorderRadius.circular(50),
        child: Container(
          width: width,
          height: height,
          alignment: Alignment.center,
          child: Text(
            buttonTitle,
            style: buttonStyle,
          ),
        ),
      ),
    );
  }
}
