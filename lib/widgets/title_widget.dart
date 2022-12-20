import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  final String title;
  const TitleWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold, letterSpacing: 2)),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(radius: 2, backgroundColor: Colors.green.shade400),
              const SizedBox(width: 8),
              const CircleAvatar(radius: 2, backgroundColor: Colors.green),
              const SizedBox(width: 8),
              const CircleAvatar(radius: 2, backgroundColor: Colors.green),
            ],
          )
        ],
      ),
    );
  }
}
