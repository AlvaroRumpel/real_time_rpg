import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'router/app_router.dart';
import 'theme/theme.dart';
import 'theme/util.dart';

void main() async {
  await Supabase.initialize(
    url: 'https://qvxegxpwepftbassdcgs.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InF2eGVneHB3ZXBmdGJhc3NkY2dzIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzcwNTU5MjEsImV4cCI6MjA1MjYzMTkyMX0.Yi6mHrWvvuGKG85-hhKa_NNU7kIIIo8P6juowNP8hgw',
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = createTextTheme(context, 'Newsreader', 'Newsreader');
    MaterialTheme theme = MaterialTheme(textTheme);
    return MaterialApp.router(
      title: 'RealTime RPG',
      routerDelegate: _appRouter.router.routerDelegate,
      routeInformationParser: _appRouter.router.routeInformationParser,
      routeInformationProvider: _appRouter.router.routeInformationProvider,
      debugShowCheckedModeBanner: false,
      theme: theme.dark(),
    );
  }
}
