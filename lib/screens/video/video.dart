import 'package:flutter/material.dart';
import 'package:blue/core/exports.dart';

class Video extends StatelessWidget {
  const Video({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ProgressBar(),
        const Text('Hallo World'),
        ElevatedButton(
          onPressed: () {},
          child: const Text(
            'Click Me',
          ),
        )
      ],
    );
  }
}
