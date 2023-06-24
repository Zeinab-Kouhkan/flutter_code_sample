import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_code_sample/base/resourceful_state.dart';
import 'package:flutter_code_sample/screen/login/bloc/state.dart';
import 'package:flutter_code_sample/utils/navigator.dart';
import 'package:sizer/sizer.dart';

import '../../themes/colors.dart';
import 'bloc/bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ResourcefulState<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  final FocusNode _focusNodePassword = FocusNode();
  final TextEditingController _controllerUsername = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();

  bool _obscurePassword = true;

  late LoginBloc bloc;

  @override
  void initState() {
    bloc = LoginBloc();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              SizedBox(height: 10.h),
              Text(
                intl.welcomeBack,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(height: 10),
              Text(
                intl.loginToYourAccount,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 60),
              TextFormField(
                controller: _controllerUsername,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  labelText: intl.username,
                  prefixIcon: const Icon(Icons.person_outline),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onEditingComplete: () => _focusNodePassword.requestFocus(),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return intl.pleaseEnterUsername;
                  }

                  return null;
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: _controllerPassword,
                focusNode: _focusNodePassword,
                obscureText: _obscurePassword,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  labelText: intl.password,
                  prefixIcon: const Icon(Icons.password_outlined),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _obscurePassword = !_obscurePassword;
                        });
                      },
                      icon: _obscurePassword
                          ? const Icon(Icons.visibility_off_outlined)
                          : const Icon(Icons.visibility_outlined)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return intl.pleaseEnterPassword;
                  }

                  return null;
                },
              ),
              const SizedBox(height: 60),
              Column(
                children: [
                  BlocConsumer<LoginBloc, LoginState>(
                    bloc: bloc,
                    listener: (context, state) {
                      (state is LoadedLoginState)
                          ? NavigatorApp.popAndPushProduct(context)
                          : DoNothingAction();
                    },
                    builder: (context, state) {
                      return ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size.fromHeight(50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        onPressed: () {
                          if (_formKey.currentState?.validate() ?? false) {
                            bloc.login(
                                userName: _controllerUsername.text,
                                password: _controllerPassword.text);
                          }
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(intl.login),
                            if (state is LoadingLoginState)
                              Container(
                                height: 10.w,
                                width: 10.w,
                                padding: const EdgeInsets.all(8.0),
                                child: CircularProgressIndicator(
                                  color: AppColors.scaffold,
                                  strokeWidth: 2,
                                ),
                              )
                          ],
                        ),
                      );
                    },
                  ),
                  /*    Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(intl.dontHaveAnAccount),
                      TextButton(
                        onPressed: () {
                          _formKey.currentState?.reset();
                          NavigatorApp.register(context);
                        },
                        child: Text(intl.signup),
                      ),
                    ],
                  ),*/
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _focusNodePassword.dispose();
    _controllerUsername.dispose();
    _controllerPassword.dispose();
    super.dispose();
  }
}
