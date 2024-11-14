import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://lccedawzzqyuuuryyxhc.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImxjY2VkYXd6enF5dXV1cnl5eGhjIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzE1NTM5NzcsImV4cCI6MjA0NzEyOTk3N30.DYKcrjbUDmUrGhhWEvrpBTYrARExAwodLNbT7P7Ki5U'
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Digital Library',
      home: BookListPage(),
    );
  }
}