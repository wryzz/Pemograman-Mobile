import 'package:flutter/material.dart';
import 'package:tugas3_listview/ui/user_list_page.dart';

void main() {
  runApp(const Mylist());
}

class Mylist extends StatelessWidget {
  const Mylist({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UserPage(),
    );
  }
}
