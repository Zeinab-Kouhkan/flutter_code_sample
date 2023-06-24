import 'package:flutter/material.dart';
import 'package:flutter_code_sample/extensions/build_context.dart';
import 'package:flutter_code_sample/themes/colors.dart';
import 'package:sizer/sizer.dart';

import 'linear_progress_indicator.dart';

/// Appbar with a back button
class AppBarBack extends AppBar {
  AppBarBack(
      {Key? key,
      PreferredSizeWidget? bottom,
      bool? progressVisible,
      VoidCallback? callback,
      Widget? backIcon,
      required String title,
      required BuildContext context,
      List<Widget>? actions,
      double? leadingWidth})
      : super(
          title: Text(
            title,
            style: context.typography.titleLarge
                ?.copyWith(color: AppColors.scaffold),
          ),
          key: key,
          toolbarHeight: 7.3.h + (bottom?.preferredSize.height ?? 0),
          leadingWidth: leadingWidth ?? 12.w,
          bottom: bottom ??
              AppLinearProgressIndicator(visible: progressVisible ?? false),
          leading: IconButton(
              onPressed: () => Navigator.maybePop(context),
              icon: const BackButtonIcon()),
          actions: actions,
        );
}
