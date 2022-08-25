import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:twiscode_test/providers/cart_provider.dart';
import 'package:twiscode_test/providers/product_provider.dart';
import 'package:twiscode_test/screens/home_screen.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<CartProvider>(
      create: (context) => CartProvider(),
    ),
    ChangeNotifierProvider<ProductProvider>(
      create: (context) => ProductProvider(),
    )
  ],
  child: const MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Twiscode Test',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}
