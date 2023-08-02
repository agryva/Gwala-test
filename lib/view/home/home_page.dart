import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gwala_test/view/component/home/content_component.dart';
import 'package:gwala_test/view/component/home/hero_component.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeroComponent(),
            ContentComponent()
          ],
        ),
      ),
    );
  }
}
