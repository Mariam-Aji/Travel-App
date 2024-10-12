import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/firebase_options.dart';
import 'package:travel_app/sinup_screen.dart';

import 'package:firebase_core/firebase_core.dart';

import 'package:firebase_messaging/firebase_messaging.dart';

@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();

  print("Handling a background message: ${message.messageId}");
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseMessaging messaging = FirebaseMessaging.instance;

  NotificationSettings settings = await messaging.requestPermission(
    alert: true,
    announcement: false,
    badge: true,
    carPlay: false,
    criticalAlert: false,
    provisional: false,
    sound: true,
  );

  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  print('====@@@@@@@fcmtoken');
  print(await FirebaseMessaging.instance.getToken());
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: signup(await FirebaseMessaging.instance.getToken().toString()),
    theme: ThemeData(useMaterial3: true),
  ));
}
