import 'package:flutter/material.dart';
import 'package:mobile_banking_gita/core/utils/size_config.dart';
import 'package:mobile_banking_gita/source/presentation/screens/home/ui/main_screen.dart';

void mainDelegate() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    SizeConfig().init(context);

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MainScreen(),
    );
  }
}
