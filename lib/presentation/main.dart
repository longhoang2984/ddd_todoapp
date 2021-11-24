import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_config/flutter_config.dart';
import 'package:icecream_todo/generated/codegen_loader.g.dart';
import 'package:icecream_todo/presentation/core/app_widget.dart';
import 'package:icecream_todo/presentation/injection.dart';
import 'package:injectable/injectable.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

// ignore: avoid_void_async
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await FlutterConfig.loadEnvVariables();
  configurationInjection(Environment.prod);

  final keyApplicationId = FlutterConfig.get('PARSE_APPLICATION_ID').toString();
  final keyClientKey = FlutterConfig.get('PARSE_CLIENT_KEY').toString();
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
