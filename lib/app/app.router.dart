// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart';
import 'package:flutter_mvvm_trial/screens/adminPanel/admin_screen_view.dart'
    as _i2;
import 'package:flutter_mvvm_trial/screens/authenticationScreen/authentication_screen_view.dart'
    as _i4;
import 'package:flutter_mvvm_trial/screens/navigationScreen/navigation_screen_view.dart'
    as _i5;
import 'package:flutter_mvvm_trial/screens/onboardingScreen/onboarding_screen_view.dart'
    as _i3;
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i6;

class Routes {
  static const adminScreenView = '/';

  static const onboardingScreenView = '/onboarding-screen-view';

  static const authenticationScreenView = '/authentication-screen-view';

  static const navigationScreenView = '/navigation-screen-view';

  static const all = <String>{
    adminScreenView,
    onboardingScreenView,
    authenticationScreenView,
    navigationScreenView
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(Routes.adminScreenView, page: _i2.AdminScreenView),
    _i1.RouteDef(Routes.onboardingScreenView, page: _i3.OnboardingScreenView),
    _i1.RouteDef(Routes.authenticationScreenView,
        page: _i4.AuthenticationScreenView),
    _i1.RouteDef(Routes.navigationScreenView, page: _i5.NavigationScreenView)
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.AdminScreenView: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const _i2.AdminScreenView(),
        settings: data,
        transitionsBuilder: data.transition ??
            (context, animation, secondaryAnimation, child) {
              return child;
            },
      );
    },
    _i3.OnboardingScreenView: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const _i3.OnboardingScreenView(),
        settings: data,
        transitionsBuilder: data.transition ??
            (context, animation, secondaryAnimation, child) {
              return child;
            },
      );
    },
    _i4.AuthenticationScreenView: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const _i4.AuthenticationScreenView(),
        settings: data,
        transitionsBuilder: data.transition ??
            (context, animation, secondaryAnimation, child) {
              return child;
            },
      );
    },
    _i5.NavigationScreenView: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const _i5.NavigationScreenView(),
        settings: data,
        transitionsBuilder: data.transition ??
            (context, animation, secondaryAnimation, child) {
              return child;
            },
      );
    }
  };

  @override
  List<_i1.RouteDef> get routes => _routes;
  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

extension NavigatorStateExtension on _i6.NavigationService {
  Future<dynamic> navigateToAdminScreenView(
      [int? routerId,
      bool preventDuplicates = true,
      Map<String, String>? parameters,
      Widget Function(
              BuildContext, Animation<double>, Animation<double>, Widget)?
          transition]) async {
    return navigateTo<dynamic>(Routes.adminScreenView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToOnboardingScreenView(
      [int? routerId,
      bool preventDuplicates = true,
      Map<String, String>? parameters,
      Widget Function(
              BuildContext, Animation<double>, Animation<double>, Widget)?
          transition]) async {
    return navigateTo<dynamic>(Routes.onboardingScreenView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToAuthenticationScreenView(
      [int? routerId,
      bool preventDuplicates = true,
      Map<String, String>? parameters,
      Widget Function(
              BuildContext, Animation<double>, Animation<double>, Widget)?
          transition]) async {
    return navigateTo<dynamic>(Routes.authenticationScreenView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToNavigationScreenView(
      [int? routerId,
      bool preventDuplicates = true,
      Map<String, String>? parameters,
      Widget Function(
              BuildContext, Animation<double>, Animation<double>, Widget)?
          transition]) async {
    return navigateTo<dynamic>(Routes.navigationScreenView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
