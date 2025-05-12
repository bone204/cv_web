import 'package:cv_web/core/constants/app_colors.dart';
import 'package:cv_web/core/utils/resizeable_utils.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatefulWidget {
  final String text;
  final void Function() onPressed;

  const CustomTextButton({super.key, required this.text, required this.onPressed});

  @override
  State<CustomTextButton> createState() => _CustomTextButtonState();
}

class _CustomTextButtonState extends State<CustomTextButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: TextButton(
        onPressed: widget.onPressed,
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          minimumSize: Size.zero,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          overlayColor:AppColors.transparent,
          splashFactory: NoSplash.splashFactory,
        ),
        child: Text(
          widget.text,
          style: TextStyle(
            fontSize: ResizeableUtils.scaleText(16, context),
            fontWeight: FontWeight.w400,
            color: isHovered ? AppColors.blue : AppColors.darkBlue,
          ),
        ),
      ),
    );
  }
}

