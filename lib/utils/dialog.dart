import 'dart:ui';

import 'package:flutter/material.dart';

abstract class DialogUtils {
  static Future<T?> showBottomSheetPage<T>(
      {required BuildContext context,
      required Widget child,
      bool enableDrag = true,
      bool isDismissible = true,
      bool isScrollControlled = true,
      bool hasWrap = true}) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: isScrollControlled,
      isDismissible: isDismissible,
      enableDrag: enableDrag,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: hasWrap ? Wrap(children: [child]) : child,
        );
      },
    );
  }

  static Future<T?> showDialogPage<T>({
    required BuildContext context,
    required Widget child,
    bool isDismissible = true,
  }) {
    return showDialog(
      context: context,
      barrierDismissible: isDismissible,
      builder: (context) {
        return WillPopScope(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: child,
          ),
          onWillPop: () async => isDismissible,
        );
      },
    );
  }

  static Future<T?> showGeneralDialogPage<T>({
    required BuildContext context,
    required Widget child,
  }) {
    return showGeneralDialog(
      context: context,
      barrierDismissible: false, // [false]: tap on darkened screen (modal barrier) can't pop the dialog
      pageBuilder: (BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation) {
        return child;
      },
    );
  }
}
