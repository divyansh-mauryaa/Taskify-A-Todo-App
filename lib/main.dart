import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'todo.dart';
import 'theme_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const TodoList(),
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          elevation: 3.0, // Adjust the value as needed
          shadowColor: Colors.black, // Set the desired shadow color
        ),
        brightness: Brightness.light,
      ),
      // theme: ThemeMode.light,
      darkTheme: ThemeData.dark(),
      themeMode: Provider.of<ThemeProvider>(context).isDarkMode
          ? ThemeMode.dark
          : ThemeMode.light,
      debugShowCheckedModeBanner: false,
    );
  }
}