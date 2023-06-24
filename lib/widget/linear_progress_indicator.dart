import 'package:flutter/material.dart';
import 'package:flutter_code_sample/themes/colors.dart';
import 'package:sizer/sizer.dart';


class AppLinearProgressIndicator extends StatelessWidget
    implements PreferredSizeWidget {
  AppLinearProgressIndicator({
    Key? key,
    this.visible = true,
    this.color,
  })  : preferredSize = Size.fromHeight(1.h),
        super(key: key);

  /// Set visibility of progressIndicator (keep widget width and height)
  final bool visible;
  final MaterialColor? color;

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      maintainSize: true,
      maintainAnimation: true,
      maintainState: true,
      visible: visible,
      child: LinearProgressIndicator(
        backgroundColor:color!=null? color!.shade200 : AppMaterialColors.secondary.shade200,
        valueColor: AlwaysStoppedAnimation<Color>(
            color!=null? color!.shade500: AppMaterialColors.secondary.shade500),
      ),
    );
  }
}
