// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../home/home_page.dart' as _i4;
import '../register/register_page.dart' as _i3;
import '../sign_in/sign_in_page.dart' as _i2;
import '../splash/splash_page.dart' as _i1;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) {
      return _i5.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    SignInPageRoute.name: (routeData) {
      return _i5.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i2.SignInPage());
    },
    RegisterPageRoute.name: (routeData) {
      return _i5.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i3.RegisterPage());
    },
    HomePageRoute.name: (routeData) {
      return _i5.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i4.HomePage());
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(SplashPageRoute.name, path: '/'),
        _i5.RouteConfig(SignInPageRoute.name, path: '/sign-in-page'),
        _i5.RouteConfig(RegisterPageRoute.name, path: '/register-page'),
        _i5.RouteConfig(HomePageRoute.name, path: '/home-page')
      ];
}

/// generated route for [_i1.SplashPage]
class SplashPageRoute extends _i5.PageRouteInfo<void> {
  const SplashPageRoute() : super(name, path: '/');

  static const String name = 'SplashPageRoute';
}

/// generated route for [_i2.SignInPage]
class SignInPageRoute extends _i5.PageRouteInfo<void> {
  const SignInPageRoute() : super(name, path: '/sign-in-page');

  static const String name = 'SignInPageRoute';
}

/// generated route for [_i3.RegisterPage]
class RegisterPageRoute extends _i5.PageRouteInfo<void> {
  const RegisterPageRoute() : super(name, path: '/register-page');

  static const String name = 'RegisterPageRoute';
}

/// generated route for [_i4.HomePage]
class HomePageRoute extends _i5.PageRouteInfo<void> {
  const HomePageRoute() : super(name, path: '/home-page');

  static const String name = 'HomePageRoute';
}
