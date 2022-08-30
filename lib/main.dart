import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task2/Controller/data_item_controller.dart';
import 'package:task2/Views/Home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MultiProvider(
      providers: [
        ChangeNotifierProvider<DataItemControllerProvider>(create: (_) => DataItemControllerProvider()),
      ],
      child: MaterialApp(
debugShowCheckedModeBanner: false,
        title: 'State Management',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),

        home: const HomeScreen(),
      )
    );
  }
}

