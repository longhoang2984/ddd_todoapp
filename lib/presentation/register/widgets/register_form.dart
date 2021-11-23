import 'dart:ui' as ui;

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icecream_todo/application/auth/register_form/register_form_bloc.dart';
import 'package:icecream_todo/gen/assets.gen.dart';
import 'package:icecream_todo/gen/colors.gen.dart';
import 'package:icecream_todo/gen/fonts.gen.dart';
import 'package:icecream_todo/generated/locale_keys.g.dart';
import 'package:icecream_todo/presentation/core/email_field.dart';
import 'package:icecream_todo/presentation/core/password_field.dart';
import 'package:icecream_todo/presentation/core/utils/show_error.dart';
import 'package:icecream_todo/presentation/routes/router.gr.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterFormBloc, RegisterFormState>(
      listener: (context, state) {
        state.authFailOrSuccess.fold(
          () => null,
          (either) => either.fold(
            (failure) => failure.maybeMap(
              serverError: (msg) {
                showError(context, msg.message ?? '');
              },
              orElse: () {
                showError(context, 'Something went wrong');
              },
            ),
            (r) {
              context.router.replace(const HomePageRoute());
            },
          ),
        );
      },
      builder: (context, state) {
        return Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Stack(
            children: [
              Positioned.directional(
                top: 0,
                start: 0,
                end: 0,
                textDirection: ui.TextDirection.ltr,
                child: Container(
                  padding: const EdgeInsets.only(top: 50.0, left: 40.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 24.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {
                                context.router.replace(const SignInPageRoute());
                              },
                              child: const Text(
                                LocaleKeys.login,
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontFamily: FontFamily.heebo,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 16.0,
                                  color: ColorName.primary,
                                ),
                              ).tr(),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 30.0,
                      ),
                      Assets.images.icLogo.image(
                        height: 68.0,
                        width: 68.0,
                      ),
                      Container(
                        height: 10.0,
                      ),
                      const Text(
                        LocaleKeys.sign_up,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontFamily: FontFamily.heebo,
                          fontWeight: FontWeight.w800,
                          fontSize: 36.0,
                          color: ColorName.tertiaryDark,
                        ),
                      ).tr(),
                    ],
                  ),
                ),
              ),
              Positioned.directional(
                bottom: 20.0,
                start: 0,
                end: 0,
                textDirection: ui.TextDirection.ltr,
                child: SingleChildScrollView(
                  child: Container(
                    padding: const EdgeInsets.only(left: 40.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        EmailAddressField(
                          onChanged: (text) => context
                              .read<RegisterFormBloc>()
                              .add(RegisterFormEvent.emailChanged(text)),
                          validator: (_) => context
                              .read<RegisterFormBloc>()
                              .state
                              .emailAddress
                              .value
                              .fold(
                                  (f) => f.maybeMap(
                                        invalidEmail: (_) => 'Invalid Email',
                                        orElse: () {},
                                      ),
                                  (r) => null),
                        ),
                        Container(
                          height: 30.0,
                        ),
                        PasswordField(
                          onChanged: (text) =>
                              context.read<RegisterFormBloc>().add(
                                    RegisterFormEvent.passwordChanged(text),
                                  ),
                          validator: (_) => context
                              .read<RegisterFormBloc>()
                              .state
                              .password
                              .value
                              .fold(
                                  (f) => f.maybeMap(
                                        shortPassword: (_) =>
                                            'Password at least 6 characters',
                                        orElse: () {},
                                      ),
                                  (r) => null),
                        ),
                        Container(
                          height: 50.0,
                        ),
                        GestureDetector(
                          onTap: () {
                            final isValidEmail = state.emailAddress.isValid();
                            final isValidPw = state.password.isValid();
                            if (isValidEmail && isValidPw) {
                              context.read<RegisterFormBloc>().add(
                                    const RegisterFormEvent.register(),
                                  );
                            }
                          },
                          child: Container(
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  ColorName.gradientPrimaryFirst,
                                  ColorName.gradientPrimarySecond,
                                ],
                              ),
                            ),
                            width: double.infinity,
                            height: 50.0,
                            padding: const EdgeInsets.only(
                              left: 24.0,
                              right: 16.0,
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    LocaleKeys.sign_up,
                                    style: TextStyle(
                                      fontFamily: FontFamily.heebo,
                                      fontWeight: FontWeight.w800,
                                      color: _isValidEmail(state) &&
                                              _isValidPw(state)
                                          ? ColorName.tertiaryWhite
                                          : ColorName.tertiaryExtraLight
                                              .withOpacity(0.32),
                                    ),
                                  ).tr(),
                                ),
                                Assets.images.icLogin.image(
                                  height: 24.0,
                                  color:
                                      _isValidEmail(state) && _isValidPw(state)
                                          ? ColorName.tertiaryWhite
                                          : ColorName.tertiaryExtraLight
                                              .withOpacity(0.32),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }

  bool _isValidEmail(RegisterFormState state) {
    return state.emailAddress.isValid() &&
        state.emailAddress.value.getOrElse(() => '').isNotEmpty;
  }

  bool _isValidPw(RegisterFormState state) {
    return state.password.isValid() &&
        state.password.value.getOrElse(() => '').isNotEmpty;
  }
}
