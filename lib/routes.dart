library routes;

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:usepepper/pages/auth_page.dart';
import 'package:usepepper/pages/loading_page.dart';
import 'package:usepepper/pages/register_page.dart';
import 'package:usepepper/pages/home_page.dart';
import 'models/app_state.dart';
import 'package:usepepper/pages/update_page.dart';
import 'package:usepepper/AppLocalizations.dart';

Map<String, WidgetBuilder> getRoutes(context, store) {
  return {
    '/': (BuildContext context) => new StoreBuilder<AppState>(
          builder: (context, store) {
            return HomePage(AppLocalizations.of(context).title);
          },
        ),
    '/update': (BuildContext context) => new StoreBuilder<AppState>(
          builder: (context, store) {
            return UpdatePage(AppLocalizations.of(context).updateDetails);
          },
        ),
    '/register': (BuildContext context) => new StoreBuilder<AppState>(
          builder: (context, store) {
            return RegisterPage(AppLocalizations.of(context).register);
          },
        ),
    '/login': (BuildContext context) => new StoreBuilder<AppState>(
          builder: (context, store) {
            return AuthPage();
          },
        ),
    '/loading': (BuildContext context) => new StoreBuilder<AppState>(
          builder: (context, store) {
            return LoadingPage();
          },
        ),
  };
}
