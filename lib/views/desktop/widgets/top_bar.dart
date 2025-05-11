import 'package:cv_web/app_texts.dart';
import 'package:cv_web/core/constants/app_colors.dart';
import 'package:cv_web/core/utils/resizeable_utils.dart';
import 'package:cv_web/views/desktop/widgets/secondary_button.dart';
import 'package:cv_web/views/desktop/widgets/text_button.dart';
import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 60),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('assets/images/logo_UIT.jpg', width: 60, height: 60),
            Row(
              children: [
                CustomTextButton(text: AppText.textHome.text, onPressed: () {}),
                SizedBox(width: ResizeableUtils.scaleSize(20, context)),
                CustomTextButton(text: AppText.textPortfolio.text, onPressed: () {}),
                SizedBox(width: ResizeableUtils.scaleSize(20, context)),
                CustomTextButton(text: AppText.textAboutMe.text, onPressed: () {}),
              ],
            ),
            SecondaryButton(
              onPressed: () {},
              text: AppText.textContactMe.text,
            ),
          ],
        ),
      ),
    );
  }
}