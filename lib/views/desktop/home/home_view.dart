import 'package:cv_web/app_texts.dart';
import 'package:cv_web/core/constants/app_colors.dart';
import 'package:cv_web/core/utils/resizeable_utils.dart';
import 'package:cv_web/views/desktop/widgets/liquid_selfie_widget.dart';
import 'package:cv_web/views/desktop/widgets/primary_button.dart';
import 'package:cv_web/views/desktop/widgets/typerwritter_effect.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primary,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: ResizeableUtils.scaleSize(85, context)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TypewriterEffect(
                  text: AppText.textHello.text,
                  style: TextStyle(
                    fontSize: ResizeableUtils.scaleText(18, context),
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Roboto',
                    color: AppColors.darkBlue,
                  ),
                ),
                SizedBox(height: ResizeableUtils.scaleSize(20, context)),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: AppText.textOverview.text,
                        style: TextStyle(
                          fontSize: ResizeableUtils.scaleText(40, context),
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Roboto',
                          color: AppColors.darkBlue,
                        ),
                      ),
                      TextSpan(
                        text: AppText.textFlutter.text,
                        style: TextStyle(
                          fontSize: ResizeableUtils.scaleText(40, context),
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Roboto',
                          color: AppColors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: ResizeableUtils.scaleSize(20, context)),
                Text(
                  AppText.textDescription.text,
                  style: TextStyle(
                    fontSize: ResizeableUtils.scaleText(18, context),
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Roboto',
                    color: AppColors.darkBlue,
                  ),
                ),
                SizedBox(height: ResizeableUtils.scaleSize(32, context)),
                PrimaryButton(
                  onPressed: () {},
                  text: AppText.textGetInTouch.text,
                ),
              ],
            ),
            SizedBox(
              width: ResizeableUtils.scaleSize(100, context),
            ),
            LiquidSelfieWidget(
              width: ResizeableUtils.scaleSize(680, context),
              height: ResizeableUtils.scaleSize(500, context),
            ),
          ],
        ),
      ),
    );
  }
}
