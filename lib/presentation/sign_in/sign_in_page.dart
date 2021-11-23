import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icecream_todo/application/auth/register_form/register_form_bloc.dart';
import 'package:icecream_todo/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:icecream_todo/presentation/injection.dart';
import 'package:icecream_todo/presentation/sign_in/widgets/sign_in_form.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => getIt<SignInFormBloc>()),
          BlocProvider(create: (context) => getIt<RegisterFormBloc>()),
        ],
        child: const SignInForm(),
      ),
    );
  }
}
