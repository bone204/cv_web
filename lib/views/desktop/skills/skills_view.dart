import 'package:cv_web/app_texts.dart';
import 'package:cv_web/core/constants/app_colors.dart';
import 'package:cv_web/core/utils/resizeable_utils.dart';
import 'package:flutter/material.dart';

class SkillsView extends StatelessWidget {
  const SkillsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: ResizeableUtils.scaleSize(85, context), vertical: ResizeableUtils.scaleSize(150, context)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppText.textSkills.text,
                  style: TextStyle(
                    fontSize: ResizeableUtils.scaleText(18, context),
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Roboto',
                    color: AppColors.darkBlue,
                  ),
                ),
                SizedBox(height: ResizeableUtils.scaleSize(20, context)),
                Text(
                  AppText.textExpertise.text,
                  style: TextStyle(
                    fontSize: ResizeableUtils.scaleText(40, context),
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Roboto',
                    color: AppColors.darkBlue,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: ResizeableUtils.scaleSize(300, context),
                  height: ResizeableUtils.scaleSize(250, context),
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                Container(
                  width: ResizeableUtils.scaleSize(300, context),
                  height: ResizeableUtils.scaleSize(250, context),
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                Container(
                  width: ResizeableUtils.scaleSize(300, context),
                  height: ResizeableUtils.scaleSize(250, context),
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                Container(
                  width: ResizeableUtils.scaleSize(300, context),
                  height: ResizeableUtils.scaleSize(250, context),
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
