/*import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_tts/flutter_tts.dart';

import 'bloc/bloc-prov-tree.dart';
import 'bloc/bloc_provider.dart';
import 'blocs/auth-bloc.dart';
import 'blocs/location_bloc.dart';
import 'blocs/pref-bloc.dart';
import 'routes.dart';
import 'screens/UI/main_screen.dart';
import 'theme/style.dart';*/

/*
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<LocationBloc>(
      bloc: LocationBloc(),
      child: MaterialApp(
        title: 'Restaurant Finder',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: MainScreen(),
      ),
    );
  }
}
*/

/*class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProviderTree(
      blocProviders: <BlocProvider>[
        BlocProvider<AuthBloc>(bloc: AuthBloc()),
        BlocProvider<PrefBloc>(bloc: PrefBloc()),
      ],
      child: MaterialApp(
        title: 'ExampleApp',
        theme: appTheme(),
        initialRoute: '/',
        routes: routes,
      ),
    );
  }
}*/

import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutterbuildbaseapp/screens/UI/main_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Restaurant Finder',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: MainScreen(),
      );
  }
}



