import 'package:firebase_auth/firebase_auth.dart';
import 'package:first_project/auth.dart';
import 'package:first_project/home.dart';
import 'package:first_project/service/model.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';

class Landing extends StatelessWidget {
  const Landing({super.key});

  @override
  Widget build(BuildContext context) {
    final UserModel? userModel = Provider.of<UserModel?>(context);
    final bool check = userModel != null;
    return check ? HomePage() : AuthPage();
  }
}
