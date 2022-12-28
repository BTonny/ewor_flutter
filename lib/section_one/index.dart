import 'package:flutter/material.dart';

import 'section_one.dart';

class Index extends StatelessWidget {
  const Index({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
            SectionOne(),
          ],
        ),
      ),
    );
  }
}
