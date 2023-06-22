import 'package:fluttertoast/fluttertoast.dart';

/// A customized toast to streamline project specifications in all platforms
abstract class ToastUtils {
  /// Show toast for all platforms
  static void show(String msg, {Toast? length = Toast.LENGTH_SHORT}) {
    Fluttertoast.showToast(
      msg: msg,
      toastLength: length,
      webPosition: 'center',
      webBgColor: '#00b09b',
      timeInSecForIosWeb: length == Toast.LENGTH_SHORT ? 1 : 5,
    );
  }
}
