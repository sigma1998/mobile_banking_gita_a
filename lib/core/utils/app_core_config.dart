import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppCoreConfig {
  late Widget _app;
  late Function _initDi;

  AppCoreConfig setApp(Widget app) {
    _app = app;
    return this;
  }

  AppCoreConfig initDi(Function value) {
    _initDi = value;
    return this;
  }

  void build() async {
    WidgetsFlutterBinding.ensureInitialized();

    await _initDi.call();

    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness: Brightness.light),
    );

    runApp(_app);
  }
}
