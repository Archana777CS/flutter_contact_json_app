import 'package:flutter/material.dart';
import 'package:jsonexample/src/features/contact/pages/contact_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "DataApp",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.lightGreen,
      ),
      home: const ContactPage(),
    );
  }
}
