import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icecream_todo/application/auth/auth_bloc.dart';
import 'package:icecream_todo/gen/assets.gen.dart';
import 'package:icecream_todo/gen/colors.gen.dart';
import 'package:auto_route/auto_route.dart';
import 'package:icecream_todo/presentation/routes/router.gr.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          unauthenticated: (_) {
            context.router.replace(const SignInPageRoute());
          },
          authenticated: (_) {
            context.router.replace(const HomePageRoute());
          },
        );
      },
      child: Scaffold(
        backgroundColor: ColorName.secondary,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Assets.images.icLogo.image(height: 80.0),
              Container(
                height: 40,
              ),
              const CircularProgressIndicator(
                color: ColorName.primarySecond,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
