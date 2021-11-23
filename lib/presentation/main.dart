import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:icecream_todo/presentation/core/app_widget.dart';
import 'package:icecream_todo/presentation/injection.dart';
import 'package:injectable/injectable.dart';
import 'package:icecream_todo/generated/codegen_loader.g.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

// ignore: avoid_void_async
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  configurationInjection(Environment.prod);
  const keyApplicationId = 'YOUR_APP_ID_HERE';
  const keyClientKey = 'YOUR_CLIENT_KEY_HERE';
  const keyParseServerUrl = 'https://parseapi.back4app.com';

  await Parse().initialize(
    keyApplicationId,
    keyParseServerUrl,
    clientKey: keyClientKey,
    debug: true,
  );
  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('en', 'US'),
      ],
      fallbackLocale: const Locale('en', 'US'),
      path: "lang",
      assetLoader: const CodegenLoader(),
      child: MyApp(),
    ),
  );
}
