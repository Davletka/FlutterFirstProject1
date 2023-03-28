import 'package:firebase_core/firebase_core.dart';
import 'package:first_project/auth.dart';
import 'package:first_project/card.dart';
import 'package:first_project/home.dart';
import 'package:first_project/landing.dart';
import 'package:first_project/pages/add_deal.dart';
import 'package:first_project/service/service.dart';
import 'package:first_project/test.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  // DBConnection().connectDB();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyThemeApp());
}

class MyThemeApp extends StatelessWidget {
  const MyThemeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
        value: DbConnection().currentUser,
        initialData: null,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(primarySwatch: Colors.red),
          initialRoute: '/',
          routes: {
            '/': (context) => const Landing(),
            '/home': (context) => const HomePage(),
            '/card': (context) => const FakeDealPages(),
            '/test': (context) => const TestPage(),
            '/addDeal': (context) => const AddPageDeal()
          },
        ));
  }
}
