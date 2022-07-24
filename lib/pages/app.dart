import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spotify_clone/pages/pages.dart';
import 'package:spotify_clone/widgets/theme_global.dart';
import 'package:spotify_clone/widgets/widgets.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
         ChangeNotifierProvider(create: (_)=> NavegacionModal()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: myThemeGlobal,
        initialRoute: 'home',
        routes: {
          'home': (_)=> HomePage(),
        },
      ),
    );
  }
}