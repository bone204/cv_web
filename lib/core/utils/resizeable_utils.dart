import 'package:cv_web/widgets/resizeable_layout.dart';
import 'package:flutter/cupertino.dart';

class ResizeableUtils {
  static double scaleSize(double size, BuildContext context) =>
      size * sizeMaxWidth(context);

  static double scaleText(double size, BuildContext context) =>
      size * (MediaQuery.of(context).size.width > 1440.0 ? 1440.0 : MediaQuery.of(context).size.width) / (ResponsiveLayout.isMobile(context) ? 864 : 1440);
      // size * sizeMaxWidth(context) + (Responsive.isMobile(context) ? size * (MediaQuery.of(context).size.width > 1440.0 ? 1440.0 : MediaQuery.of(context).size.width) / 2880 : 0);

  static double scalePadding(double size, BuildContext context) =>
      size * sizeMaxWidth(context) +
          (MediaQuery.of(context).size.width > 1440
              ? (MediaQuery.of(context).size.width - 1440) / 2
              : 0);

  static double sizeMaxWidth(BuildContext context) => (MediaQuery.of(context).size.width > 1440.0 ? 1440.0 : MediaQuery.of(context).size.width) / 1440;
}