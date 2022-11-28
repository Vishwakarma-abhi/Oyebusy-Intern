import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  final logincontroller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Task 1',
        debugShowCheckedModeBanner: false,
        home: InitializerWidget());
  }
}

class InitializerWiget extends StatefulWidget {
  const InitializerWiget({Key? key}) : super(key: key);

  @override
  State<InitializerWiget> createState() => _InitializerWigetState();
}

class _InitializerWigetState extends State<InitializerWiget> {
  @override
  Widget build(BuildContext context) {}
}
