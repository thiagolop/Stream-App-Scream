import 'package:flutter/material.dart';
import 'package:stream_app/features/dashboard/dashboard_page.dart';

void main() {
  runApp(const StreamApp());
}

class StreamApp extends StatelessWidget {
  const StreamApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stream App',
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.black,
          appBarTheme:  const AppBarTheme(
            backgroundColor: Colors.black,
            elevation: 0
          )),
      debugShowCheckedModeBanner: false,
      home:  const DashboardPage(),
    );
  }
}
