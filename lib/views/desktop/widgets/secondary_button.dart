import 'package:cv_web/core/constants/app_colors.dart';
import 'package:cv_web/core/utils/resizeable_utils.dart';
import 'package:flutter/material.dart';

class SecondaryButton extends StatefulWidget {
  const SecondaryButton({super.key, required this.onPressed, required this.text});
  final void Function() onPressed;
  final String text;

  @override
  State<SecondaryButton> createState() => _SecondaryButtonState();
}

class _SecondaryButtonState extends State<SecondaryButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: TextButton(
        onPressed: widget.onPressed,
        style: TextButton.styleFrom(
          // ignore: deprecated_member_use
          backgroundColor: isHovered ? AppColors.blue.withOpacity(0.1) : AppColors.white,
          fixedSize: Size( 
            ResizeableUtils.scaleSize(130, context),
            ResizeableUtils.scaleSize(50, context),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.33),
            side: BorderSide(
              color: AppColors.blue,
              width: 1.33,
            ),
          ),
        ),
        child: Text(
          widget.text,
          style: TextStyle(
            fontSize: ResizeableUtils.scaleText(14, context),
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w400,
            color: AppColors.blue,
          ),
        ),
      ),
    );
  }
}
