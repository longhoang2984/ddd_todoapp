import 'package:flutter/material.dart';
import 'package:icecream_todo/gen/colors.gen.dart';
import 'package:icecream_todo/generated/locale_keys.g.dart';
import 'package:icecream_todo/presentation/core/utils/base_text_style.dart';
import 'package:icecream_todo/presentation/core/utils/under_line_text_field.dart';
import 'package:easy_localization/easy_localization.dart';

class EmailAddressField extends StatelessWidget {
  final Function(String)? onChanged;
  final String? Function(String?)? validator;

  const EmailAddressField({Key? key, this.onChanged, this.validator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelText: LocaleKeys.email_address.tr().toUpperCase(),
        labelStyle: BaseTextStyle.style(
          style: FontStyle.dark,
          color: ColorName.tertiaryMedium,
          fontSize: 9.0,
        ),
        hintText: LocaleKeys.enter_your_email.tr(),
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
      ),
      cursorColor: ColorName.tertiaryDark,
      style: BaseTextStyle.style(
        fontSize: 16.0,
      ),
      onChanged: onChanged,
      validator: validator,
    );
  }
}
