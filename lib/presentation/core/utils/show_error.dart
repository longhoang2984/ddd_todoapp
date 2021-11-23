import 'package:flutter/material.dart';
import 'package:icecream_todo/gen/colors.gen.dart';
import 'package:icecream_todo/presentation/core/utils/base_text_style.dart';

void showError(BuildContext context, String message) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: ColorName.contextualError,
        titleTextStyle: BaseTextStyle.style(
          style: FontStyle.bold,
          color: Colors.white,
        ),
        contentTextStyle: BaseTextStyle.style(
          color: Colors.white,
        ),
        content: Text(message),
        actions: <Widget>[
          TextButton(
            child: Text(
              "OK",
              style: BaseTextStyle.style(
                style: FontStyle.semibold,
                color: Colors.white,
              ),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      );
    },
  );
}
