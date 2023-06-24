import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_code_sample/data/sharedpreferences.dart';
import 'package:flutter_code_sample/network/repository.dart';
import 'package:flutter_code_sample/screen/setting/bloc/state.dart';

class SettingBloc extends Cubit<SettingState> {
  final _repository = Repository.getInstance();
  SettingBloc() : super(const InitialSettingState());
  
  void logout(){
    AppSharedPreferences.logout();
    _repository.clearProfileCache();

  }
}
