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
      decoration: BoxDecoration(
        color: AppColors.white,
        boxShadow: [
          BoxShadow(
            // ignore: deprecated_member_use
            color: AppColors.black.withOpacity(0.1),
            blurRadius: 80,
            offset: Offset(0, 5.33),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 60),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/images/logo_UIT.jpg', 
                  width: ResizeableUtils.scaleSize(74, context), 
                  height: ResizeableUtils.scaleSize(60, context)
                ),
                SizedBox(width: ResizeableUtils.scaleSize(10, context)),
                Text(
                  AppText.textUniversityOfInformationTechnology.text, 
                  softWrap: true,
                  overflow: TextOverflow.visible,
                  style: TextStyle(
                    fontSize: ResizeableUtils.scaleText(16, context),
                    fontWeight: FontWeight.w900,
                    fontFamily: 'Roboto',
                    color: AppColors.logoUIT,
                  ),
                ),
              ],
            ),
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