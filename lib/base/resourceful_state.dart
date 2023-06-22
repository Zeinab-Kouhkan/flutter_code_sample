import 'package:flutter/material.dart';
import 'package:flutter_code_sample/extensions/build_context.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:need_resume/need_resume.dart';

import '../nework/error/error_observer.dart';
import '../routes.dart';
import '../themes/font.dart';
import '../themes/locale.dart';

/// Convenient base class for StatefulWidget's State to provide access to resources
/// like typography, intl, ...
abstract class ResourcefulState<T extends StatefulWidget>
    extends ResumableState<T> with RouteAware, DioErrorListener {
  late AppLocalizations intl;
  late TextTheme typography;
  AppFontFamily fontFamily = AppFontFamily(appInitialLocale);
  final bool _printLifecycleEvents = true;
  final bool _printPageEventsOnly = true;

  @override
  @mustCallSuper
  Widget build(BuildContext context) {
    _printEvent('building widget...');
    intl = context.intl;
    typography = context.typography;
    return const Text('Not implemented body');
  }

  String get _widgetName => widget.toStringShort();

  void _printEvent(String message) {
    if (_printPageEventsOnly && !_widgetName.endsWith('Page')) {
      return;
    }
    if (_printLifecycleEvents) {
      debugPrint('ResourcefulState => $_widgetName: $message');
    }
  }

  void setTheme() {}

  @override
  void onRetryAfterMaintenance() {}

  @override
  void onRetryAfterNoInternet() {}

  @override
  void onRetryLoadingPage() {}

  @override
  void dispose() {
    _printEvent('dispose()');
    routeObserver.unsubscribe(this);
    dioErrorObserver.unsubscribe(this);
    super.dispose();
  }

  @override
  void initState() {
    dioErrorObserver.subscribe(this);
    _printEvent('initState()');
    super.initState();
  }

  @override
  void didChangeDependencies() {
    _printEvent('didChangeDependencies()');
    final route = ModalRoute.of(context);
    if (route is PageRoute) {
      routeObserver.subscribe(this, route);
    }
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant T oldWidget) {
    _printEvent('didUpdateWidget()');
    super.didUpdateWidget(oldWidget);
  }

  @override
  @mustCallSuper
  void onResume() {
    _printEvent('onResume()');
  }

  @override
  @mustCallSuper
  void onPause() {
    _printEvent('onPause()');
  }

  @override
  @mustCallSuper
  void onReady() {
    _printEvent('onReady()');
  }

  @override
  @mustCallSuper
  void didPush() {
    _printEvent('didPush()');
  }

  @override
  @mustCallSuper
  void didPushNext() {
    _printEvent('didPushNext()');
  }

  @override
  @mustCallSuper
  void didPop() {
    _printEvent('didPop()');
  }

  @override
  @mustCallSuper
  void didPopNext() {
    _printEvent('didPopNext()');
  }
}
