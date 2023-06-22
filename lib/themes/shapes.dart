import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../widget/triangle_decoration.dart';


abstract class AppShapes {
  static  CircleBorder circle = const CircleBorder();

  /// 1.5 percent of width
  static  RoundedRectangleBorder rectangleVerySmall = RoundedRectangleBorder(
    borderRadius: AppBorderRadius.borderRadiusVerySmall,
  );

  /// 2.5 percent of width
  static  RoundedRectangleBorder rectangleSmall = RoundedRectangleBorder(
    borderRadius: AppBorderRadius.borderRadiusSmall,
  );

  /// 3 percent of width
  static  RoundedRectangleBorder rectangleMild = RoundedRectangleBorder(
    borderRadius: AppBorderRadius.borderRadiusMild,
  );

  /// 3.5 percent of width
  static  RoundedRectangleBorder rectangleMedium = RoundedRectangleBorder(
    borderRadius: AppBorderRadius.borderRadiusMedium,
  );

  /// 4 percent of width
  static  RoundedRectangleBorder rectangleDefault = RoundedRectangleBorder(
    borderRadius: AppBorderRadius.borderRadiusDefault,
  );

  /// 6 percent of width
  static  RoundedRectangleBorder rectangleLarge = RoundedRectangleBorder(
    borderRadius: AppBorderRadius.borderRadiusLarge,
  );

  /// 8 percent of width
  static  RoundedRectangleBorder rectangleExtraLarge = RoundedRectangleBorder(
    borderRadius: AppBorderRadius.borderRadiusExtraLarge,
  );

  /// 3 percent of width
  static  RoundedRectangleBorder rectangleTopMild = RoundedRectangleBorder(
    borderRadius: AppBorderRadius.borderRadiusTopMild,
  );

  /// 4 percent of width
  static  RoundedRectangleBorder rectangleTopDefault = RoundedRectangleBorder(
    borderRadius: AppBorderRadius.borderRadiusTopDefault,
  );

  /// 6 percent of width
  static  RoundedRectangleBorder rectangleTopLarge = RoundedRectangleBorder(
    borderRadius: AppBorderRadius.borderRadiusTopLarge,
  );

  /// 8 percent of width
  static  RoundedRectangleBorder rectangleTopExtraLarge = RoundedRectangleBorder(
    borderRadius: AppBorderRadius.borderRadiusTopExtraLarge,
  );
}

abstract class AppDecorations {
  static  BoxDecoration circle = const BoxDecoration(
    shape: BoxShape.circle,
  );

  static  TriangleDecoration triangle = const TriangleDecoration();

  static  BoxDecoration boxNoRadius = const BoxDecoration();

  /// 1.5 percent of width
  static  BoxDecoration boxVerySmall = BoxDecoration(
    borderRadius: AppBorderRadius.borderRadiusVerySmall,
  );

  /// 2.5 percent of width
  static  BoxDecoration boxSmall = BoxDecoration(
    borderRadius: AppBorderRadius.borderRadiusSmall,
  );

  /// 3 percent of width
  static  BoxDecoration boxMild = BoxDecoration(
    borderRadius: AppBorderRadius.borderRadiusMild,
  );

  /// 3.5 percent of width
  static  BoxDecoration boxMedium = BoxDecoration(
    borderRadius: AppBorderRadius.borderRadiusMedium,
  );

  /// 4 percent of width
  static  BoxDecoration boxDefault = BoxDecoration(
    borderRadius: AppBorderRadius.borderRadiusDefault,
  );

  /// 6 percent of width
  static  BoxDecoration boxLarge = BoxDecoration(
    borderRadius: AppBorderRadius.borderRadiusLarge,
  );

  static  BoxDecoration boxLargeNoBottomRight = BoxDecoration(
    borderRadius: AppBorderRadius.borderRadiusLargeNoBottomRight,
  );

  static  BoxDecoration boxLargeNoBottomLeft = BoxDecoration(
    borderRadius: AppBorderRadius.borderRadiusLargeNoBottomLeft,
  );

  static  BoxDecoration boxLargeRight = BoxDecoration(
    borderRadius: AppBorderRadius.borderRadiusLargeRight,
  );

  /// 8 percent of width
  static  BoxDecoration boxExtraLarge = BoxDecoration(
    borderRadius: AppBorderRadius.borderRadiusExtraLarge,
  );

  /// 3 percent of width
  static  BoxDecoration boxTopMild = BoxDecoration(
    borderRadius: AppBorderRadius.borderRadiusTopMild,
  );

  /// 4 percent of width
  static  BoxDecoration boxTopDefault = BoxDecoration(
    borderRadius: AppBorderRadius.borderRadiusTopDefault,
  );

  static  BoxDecoration boxRightDefault = BoxDecoration(
    borderRadius: AppBorderRadius.borderRadiusDefaultRight,
  );

  static  BoxDecoration boxLeftDefault = BoxDecoration(
    borderRadius: AppBorderRadius.borderRadiusDefaultLeft,
  );

  /// 6 percent of width
  static  BoxDecoration boxTopLarge = BoxDecoration(
    borderRadius: AppBorderRadius.borderRadiusTopLarge,
  );

  /// 8 percent of width
  static  BoxDecoration boxTopExtraLarge = BoxDecoration(
    borderRadius: AppBorderRadius.borderRadiusTopExtraLarge,
  );

  /// 3 percent of width
  static  BoxDecoration boxBottomMild = BoxDecoration(
    borderRadius: AppBorderRadius.borderRadiusBottomMild,
  );

  /// 8 percent of width
  static  BoxDecoration boxBottomExtraLarge = BoxDecoration(
    borderRadius: AppBorderRadius.borderRadiusBottomExtraLarge,
  );
}

abstract class AppOutlineInputBorder {
  /// 1.5 percent of width
  static  OutlineInputBorder borderVerySmall = OutlineInputBorder(
    borderRadius: AppBorderRadius.borderRadiusVerySmall,
  );

  /// 2.5 percent of width
  static  OutlineInputBorder borderSmall = OutlineInputBorder(
    borderRadius: AppBorderRadius.borderRadiusSmall,
  );

  /// 3 percent of width
  static  OutlineInputBorder borderMild = OutlineInputBorder(
    borderRadius: AppBorderRadius.borderRadiusMild,
  );

  /// 3.5 percent of width
  static  OutlineInputBorder borderMedium = OutlineInputBorder(
    borderRadius: AppBorderRadius.borderRadiusMedium,
  );

  /// 4 percent of width
  static  OutlineInputBorder borderDefault = OutlineInputBorder(
    borderRadius: AppBorderRadius.borderRadiusDefault,
  );

  /// 6 percent of width
  static  OutlineInputBorder borderLarge = OutlineInputBorder(
    borderRadius: AppBorderRadius.borderRadiusLarge,
  );

  /// 8 percent of width
  static  OutlineInputBorder borderExtraLarge = OutlineInputBorder(
    borderRadius: AppBorderRadius.borderRadiusExtraLarge,
  );
}

abstract class AppUnderlineInputBorder {
  /// 1.5 percent of width
  static  UnderlineInputBorder borderVerySmall = UnderlineInputBorder(
    borderRadius: AppBorderRadius.borderRadiusVerySmall,
  );

  /// 2.5 percent of width
  static  UnderlineInputBorder borderSmall = UnderlineInputBorder(
    borderRadius: AppBorderRadius.borderRadiusSmall,
  );

  /// 3 percent of width
  static  UnderlineInputBorder borderMild = UnderlineInputBorder(
    borderRadius: AppBorderRadius.borderRadiusMild,
  );

  /// 3.5 percent of width
  static  UnderlineInputBorder borderMedium = UnderlineInputBorder(
    borderRadius: AppBorderRadius.borderRadiusMedium,
  );

  /// 4 percent of width
  static  UnderlineInputBorder borderDefault = UnderlineInputBorder(
    borderRadius: AppBorderRadius.borderRadiusDefault,
  );

  /// 6 percent of width
  static  UnderlineInputBorder borderLarge = UnderlineInputBorder(
    borderRadius: AppBorderRadius.borderRadiusLarge,
  );

  /// 8 percent of width
  static  UnderlineInputBorder borderExtraLarge = UnderlineInputBorder(
    borderRadius: AppBorderRadius.borderRadiusExtraLarge,
  );
}

abstract class AppBorderRadius {
  static  BorderRadius borderRadiusVerySmall = BorderRadius.all(AppRadius.radiusVerySmall);
  static  BorderRadius borderRadiusSmall = BorderRadius.all(AppRadius.radiusSmall);
  static  BorderRadius borderRadiusMild = BorderRadius.all(AppRadius.radiusMild);
  static  BorderRadius borderRadiusMedium = BorderRadius.all(AppRadius.radiusMedium);
  static  BorderRadius borderRadiusDefault = BorderRadius.all(AppRadius.radiusDefault);
  static  BorderRadius borderRadiusLarge = BorderRadius.all(AppRadius.radiusLarge);
  static  BorderRadius borderRadiusExtraLarge = BorderRadius.all(AppRadius.radiusExtraLarge);

  static  BorderRadius borderRadiusTopMild = BorderRadius.only(
    topLeft: AppRadius.radiusMild,
    topRight: AppRadius.radiusMild,
  );

  static  BorderRadius borderRadiusTopDefault = BorderRadius.only(
    topLeft: AppRadius.radiusDefault,
    topRight: AppRadius.radiusDefault,
  );

  static  BorderRadius borderRadiusTopLarge = BorderRadius.only(
    topLeft: AppRadius.radiusLarge,
    topRight: AppRadius.radiusLarge,
  );

  static  BorderRadius borderRadiusTopExtraLarge = BorderRadius.only(
    topLeft: AppRadius.radiusExtraLarge,
    topRight: AppRadius.radiusExtraLarge,
  );

  static  BorderRadius borderRadiusBottomMild = BorderRadius.only(
    bottomLeft: AppRadius.radiusMild,
    bottomRight: AppRadius.radiusMild,
  );


  static  BorderRadius borderRadiusBottomExtraLarge = BorderRadius.only(
    bottomLeft: AppRadius.radiusExtraLarge,
    bottomRight: AppRadius.radiusExtraLarge,
  );

  static  BorderRadius borderRadiusLargeNoBottomRight = BorderRadius.only(
    topLeft: AppRadius.radiusLarge,
    topRight: AppRadius.radiusLarge,
    bottomLeft: AppRadius.radiusLarge,
  );

  static  BorderRadius borderRadiusLargeNoBottomLeft = BorderRadius.only(
    topLeft: AppRadius.radiusLarge,
    topRight: AppRadius.radiusLarge,
    bottomRight: AppRadius.radiusLarge,
  );

  static  BorderRadius borderRadiusLargeRight = BorderRadius.only(
    topRight: AppRadius.radiusLarge,
    bottomRight: AppRadius.radiusLarge,
  );

  static  BorderRadius borderRadiusDefaultRight = BorderRadius.only(
    topRight: AppRadius.radiusDefault,
    bottomRight: AppRadius.radiusDefault,
  );

  static  BorderRadius borderRadiusDefaultLeft = BorderRadius.only(
    topLeft: AppRadius.radiusDefault,
    bottomLeft: AppRadius.radiusDefault,
  );
}

abstract class AppRadius {
  static  Radius radiusVerySmall = Radius.circular(1.5.w);
  static  Radius radiusSmall = Radius.circular(2.5.w);
  static  Radius radiusMild = Radius.circular(3.w);
  static  Radius radiusMedium = Radius.circular(3.5.w);
  static  Radius radiusDefault = Radius.circular(4.w);
  static  Radius radiusLarge = Radius.circular(6.w);
  static  Radius radiusExtraLarge = Radius.circular(8.w);
}
