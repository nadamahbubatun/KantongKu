import 'package:aplikasikeuangan/pages/main_page.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://njvgucqddcbmwlhixzkt.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5qdmd1Y3FkZGNibXdsaGl4emt0Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTM5NTUzMjcsImV4cCI6MjAyOTUzMTMyN30.lZjB84he8gAgxMuI39YPDwsew1iyV1BEKkeiOHkpe9M',
  );

  final supabase = Supabase.instance.client;

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
