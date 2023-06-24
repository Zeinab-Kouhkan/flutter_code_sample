import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_code_sample/base/resourceful_state.dart';
import 'package:flutter_code_sample/data/sharedpreferences.dart';
import 'package:flutter_code_sample/screen/setting/bloc/bloc.dart';
import 'package:flutter_code_sample/themes/locale.dart';

import '../../app/bloc/bloc.dart';

class Language extends StatefulWidget {
  const Language({Key? key}) : super(key: key);

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends ResourcefulState<Language> {
  late SettingBloc bloc;
  late AppBloc appBloc;
  int _selectedValue = 1;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    bloc = context.read<SettingBloc>();
    appBloc = context.read<AppBloc>();
    return Column(
      children: [
        RadioListTile(
          title: Text(intl.english),
          onChanged: (value) {
            setState(()  {
              _selectedValue = value!;
              AppLocale.setCurrentLocale(AppLocale.en);
              AppSharedPreferences.setLocaleCode('en');
              appBloc.setLocale(AppLocale.en);
            });
          },
          value: 1, groupValue: _selectedValue,
        ),
        RadioListTile(
          selected: false,
          title: Text(intl.french),
          value: 2,
          onChanged: (value) {
            setState(()  {
              _selectedValue = value!;
               AppLocale.setCurrentLocale(AppLocale.fr);
              AppSharedPreferences.setLocaleCode('fr');
              appBloc.setLocale(AppLocale.fr);

            });
          }, groupValue: _selectedValue,
        ),
      ],
    );
  }
}
