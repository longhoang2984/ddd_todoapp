import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icecream_todo/application/auth/register_form/register_form_bloc.dart';
import 'package:icecream_todo/presentation/injection.dart';
import 'package:icecream_todo/presentation/register/widgets/register_form.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocProvider(
      create: (context) => getIt<RegisterFormBloc>(),
      child: const RegisterForm(),
    ));
  }
}
