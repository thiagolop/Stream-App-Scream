import 'dart:math';

import 'package:flutter/material.dart';

class LiveNowWidget extends StatelessWidget {
  const LiveNowWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width / 2.5;
    return SizedBox(
      height: width * 1.2,
      child: ListView.separated(
          separatorBuilder: (context, index) => const SizedBox(width: 16),
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 24),
          itemCount: 10,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) => _LiveNowItemWidget(width: width)),
    );
  }
}

class _LiveNowItemWidget extends StatelessWidget {
  final double width;
  const _LiveNowItemWidget({
    Key? key,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var randomValue = Random().nextInt(99999) + 1000;
    var randomValueString = randomValue.toString();
    return Stack(
      children: [
        Container(
          width: width,
          decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(16),
              image: const DecorationImage(
                  image: NetworkImage(
                    'https://scontent.fjdo10-2.fna.fbcdn.net/v/t1.6435-9/118540937_2765446503555082_7363637291354466622_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=0JpxXaFW5I8AX8Jftmx&_nc_ht=scontent.fjdo10-2.fna&oh=00_AfBY9Not8QPy_LkdmxTB_PmBgVRWR8yzjo0PGxN4tDjLKQ&oe=63C91DB3',
                  ),
                  fit: BoxFit.cover)),
        ),
        Positioned.fill(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(backgroundColor: Colors.green.shade400, radius: 8),
                  const SizedBox(width: 5),
                  const Text('Califórnia', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    decoration: BoxDecoration(color: Colors.green.shade400, borderRadius: BorderRadius.circular(6)),
                    child: Text('$randomValueString  View'),
                  )
                ],
              )
          ],
        ),
            ))
      ],
    );
  }
}
