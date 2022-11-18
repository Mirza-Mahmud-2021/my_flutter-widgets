import 'package:flutter/material.dart';
import 'package:my_flutter_widgets/screens/widgets_test_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My Flutter Widgets",
      home: WidgetTestScreen(),
    );
  }
}
