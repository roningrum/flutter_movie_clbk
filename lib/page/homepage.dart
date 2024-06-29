import 'package:flutter/material.dart';
import 'package:flutter_movie_clbk/theme/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: primaryColor,
          title: const Text("Hello Cuk", style: TextStyle()),
        ),
        body: const Column(
          children: [
            Text("Hello")
          ],
        )

    );
  }
}
