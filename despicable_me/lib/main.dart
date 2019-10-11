import 'package:despicable_me/ui/pages/character_list_page.dart';
import 'package:flutter/material.dart';

main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Despicable Me",
      theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: Colors.white,
          canvasColor: Colors.white,
          appBarTheme: AppBarTheme(
            elevation: 0,
          )),
      routes: {"/": (context) => CharacterListPage()},
      debugShowCheckedModeBanner: false,
    );
  }
}
