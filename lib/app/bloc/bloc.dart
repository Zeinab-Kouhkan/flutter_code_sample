import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_code_sample/app/bloc/state.dart';

class AppBloc extends Cubit<AppState> {

  AppBloc() : super(const InitialLocaleState());


  void setLocale(Locale locale) {
    emit(AppState.loaded(locale));
  }

  }