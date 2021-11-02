import 'dart:io';

import 'package:desktop_window/desktop_window.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spotfiy_clone/models/current_track.dart';
import 'package:spotfiy_clone/screens/home_screen.dart';

import 'style/theme/dark_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (!kIsWeb && Platform.isMacOS || Platform.isLinux || Platform.isWindows) {
    await DesktopWindow.setMinWindowSize(
      const Size(600, 800),
    );
  }
  runApp(ChangeNotifierProvider(
    child: const MyApp(),
    create: (context) => CurrentTrackModel(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spotify Clone',
      debugShowCheckedModeBanner: false,
      darkTheme: themeDark,
      home: const Shell(),
    );
  }
}
