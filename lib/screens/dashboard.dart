import 'package:flutter/material.dart';

class DashBoardScrren extends StatelessWidget {
  const DashBoardScrren({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Drawer(),
      ),
    );
  }
}
