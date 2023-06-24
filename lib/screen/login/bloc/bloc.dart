import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_code_sample/data/entity/login.dart';
import 'package:flutter_code_sample/data/sharedpreferences.dart';
import 'package:flutter_code_sample/extensions/object.dart';
import 'package:flutter_code_sample/screen/login/bloc/state.dart';
import 'package:flutter_code_sample/utils/toast.dart';

import '../../../network/repository.dart';

class LoginBloc extends Cubit<LoginState> {
  final _repository = Repository.getInstance();

  LoginBloc() : super(const InitialLoginState());

  void login({required String userName, required String password}) {
    emit(const LoginState.loading());
    final requestData =
        LoginRequestData(username: userName, password: password);
    _repository.login(requestData).then((value) {
      ToastUtils.show(value.message!);
      value.data?.let((it) {
        AppSharedPreferences.setAuthToken(it.token);
        AppSharedPreferences.setIsLoggedIn(true);
        emit(LoginState.loaded(it));
      });
    }).onError((error, stackTrace) {
      ///error is handled in error_handler interceptor
      emit(LoginState.error(error.toString()));
    });
  }
}
