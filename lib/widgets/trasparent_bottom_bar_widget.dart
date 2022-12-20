import 'package:flutter/material.dart';

class TrasparentBottomBarWidget extends StatefulWidget {
  const TrasparentBottomBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<TrasparentBottomBarWidget> createState() => _TrasparentBottomBarWidgetState();
}

class _TrasparentBottomBarWidgetState extends State<TrasparentBottomBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [
            Colors.black,
            Colors.black,
            Colors.transparent,
          ],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.home, color: Colors.white)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search, color: Colors.white)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.favorite, color: Colors.white)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings, color: Colors.white)),
        ],
      ),
    );
  }
}
