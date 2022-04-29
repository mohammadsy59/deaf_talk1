import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'gui/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey:
            "AAAAY1nGxXY:APA91bHGMG1Z6fuPYGH8y_he05yOY_j56XPUZYOgWilQaq4xEfV7qTI2hTHlMyk3YyYVQArN6tQBSymSqsjnCtSjktys0jXhiVyFq0eQYHcCsc3ZIO3kb7FDKphe6bCWciB7x9WciWat",
        appId: "1:426707961206:android:b77872c91bf7335a522657",
        messagingSenderId: "426707961206",
        projectId: "deaf-talk-66ca8"),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
