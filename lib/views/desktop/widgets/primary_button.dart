import 'package:cv_web/core/constants/app_colors.dart';
import 'package:cv_web/core/utils/resizeable_utils.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatefulWidget {
  const PrimaryButton({super.key, required this.onPressed, required this.text});
  final void Function() onPressed;
  final String text;

  @override
  State<PrimaryButton> createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: TextButton(
        onPressed: widget.onPressed,
        style: TextButton.styleFrom(
          backgroundColor: isHovered ? AppColors.deepBlue : AppColors.blue,
          fixedSize: Size( 
            ResizeableUtils.scaleSize(130, context),
            ResizeableUtils.scaleSize(50, context),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.33),
          ),
        ),
        child: Text(
          widget.text,
          style: TextStyle(
            fontSize: ResizeableUtils.scaleText(14, context),
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w400,
            color: AppColors.white,
          ),
        ),
      ),
    );
  }
}
