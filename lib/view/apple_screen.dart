import 'package:flutter/material.dart';

import '../components/widget/custom_card.dart';




class AppleScreen extends StatelessWidget {
  const AppleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CustomCard(
          title: 'Google\'s latest \'Block Breaker\' easter egg gives you all the retro nostalgia',
          image: 'https://th.bing.com/th/id/OIP.38odTjqMcjbdICp7AMXCeAHaFj?rs=1&pid=ImgDetMain',
        ),
      ],
    );
  }
}
