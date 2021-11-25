import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:icecream_todo/gen/assets.gen.dart';
import 'package:icecream_todo/gen/colors.gen.dart';
import 'package:icecream_todo/generated/locale_keys.g.dart';
import 'package:icecream_todo/presentation/core/utils/base_text_style.dart';
import 'package:icecream_todo/presentation/core/utils/under_line_text_field.dart';

class PasswordField extends HookWidget {
  const PasswordField({Key? key, this.onChanged, this.validator})
      : super(key: key);
  final Function(String)? onChanged;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    final showPasswordState = useState(false);

    return TextFormField(
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelText: LocaleKeys.password.tr().toUpperCase(),
        labelStyle: BaseTextStyle.style(
          style: FontStyle.dark,
          color: ColorName.tertiaryMedium,
          fontSize: 9.0,
        ),
        hintText: LocaleKeys.enter_your_password.tr(),
        hintStyle: BaseTextStyle.style(
          fontSize: 16.0,
          color: ColorName.tertiaryLight,
        ),
        errorStyle: BaseTextStyle.style(
          style: FontStyle.dark,
          color: ColorName.contextualError,
          fontSize: 9.0,
        ),
        border: getUnderLineBorder(ColorName.tertiaryLight),
        focusedBorder: getUnderLineBorder(ColorName.contextualSuccess),
        errorBorder: getUnderLineBorder(ColorName.contextualError),
        suffixIcon: GestureDetector(
          onTap: () {
            showPasswordState.value = !showPasswordState.value;
          },
          child: Container(
            padding: const EdgeInsets.only(top: 10.0),
            height: 40.0,
            child: (showPasswordState.value
                    ? Assets.images.icHidePw
                    : Assets.images.icShowPw)
                .image(),
          ),
        ),
      ),
      cursorColor: ColorName.tertiaryDark,
      style: BaseTextStyle.style(
        fontSize: 16.0,
      ),
      obscureText: !showPasswordState.value,
      onChanged: onChanged,
      validator: validator,
    );
  }
}
