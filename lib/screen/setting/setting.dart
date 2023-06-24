import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_code_sample/base/resourceful_state.dart';
import 'package:sizer/sizer.dart';

import '../../utils/navigator.dart';
import '../../widget/appbar_back.dart';
import 'bloc/bloc.dart';
import 'language.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends ResourcefulState<SettingPage> {
  late SettingBloc bloc;

  @override
  void initState() {
    bloc = SettingBloc();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      appBar: AppBarBack(
        title: intl.setting,
        context: context,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 2.0.h, horizontal: 3.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () => DoNothingAction(),
                    icon: const Icon(Icons.language_rounded)),
                Text(intl.languages),
              ],
            ),
            BlocProvider(
              create: (context) => bloc,
              child: const Language(),
            ),
            InkWell(
              onTap: () {
                bloc.logout();
                NavigatorApp.popAndPushLogin(context);
              },
              child: Row(
                children: [
                  IconButton(
                      onPressed: () => DoNothingAction(),
                      icon: const Icon(Icons.logout_rounded)),
                  Text(intl.logout),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
