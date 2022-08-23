import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mojol/app/shared/theme.dart';

import 'app/routes/app_pages.dart';

FirebaseDatabase database = FirebaseDatabase.instance;
DatabaseReference usersRef = FirebaseDatabase.instance.ref().child("users");
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: theme,
    ),
  );
}
