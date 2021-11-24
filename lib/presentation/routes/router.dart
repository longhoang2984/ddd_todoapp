import 'package:auto_route/auto_route.dart';
import 'package:icecream_todo/presentation/home/home_page.dart';
import 'package:icecream_todo/presentation/note_form/note_form_page.dart';
import 'package:icecream_todo/presentation/register/register_page.dart';
import 'package:icecream_todo/presentation/sign_in/sign_in_page.dart';
import 'package:auto_route/annotations.dart';
import 'package:icecream_todo/presentation/splash/splash_page.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  CupertinoRoute(page: SplashPage, initial: true),
  CupertinoRoute(page: SignInPage),
  CupertinoRoute(page: RegisterPage),
  CupertinoRoute(page: HomePage),
  CupertinoRoute(page: NoteFormPage),
])
class $AppRouter {}
