import 'dart:math';

import 'package:flutter/material.dart';

class PopularStreamersWidget extends StatelessWidget {
  const PopularStreamersWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width / 2.5;
    return SizedBox(
      height: 100,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(width: 16),
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 24),
        itemBuilder: (context, index) => _PopularStreamersItem(
          width: width,
        ),
      ),
    );
  }
}

class _PopularStreamersItem extends StatelessWidget {
  final double width;
  const _PopularStreamersItem({Key? key, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var randomValue = Random().nextInt(99) + 10;
    var randomValueString = randomValue.toString();
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16), color: Colors.black),
      width: width,
      height: 100,
      child: Row(children: [
        Stack(
          children: [
            Container(
              width: width,
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(16),
                  image: const DecorationImage(
                      image: NetworkImage(
                        'https://scontent.fjdo10-2.fna.fbcdn.net/v/t1.6435-9/117931387_2749247138508352_7125454815021338615_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=kI9CDGaTq28AX8Vpyh2&_nc_ht=scontent.fjdo10-2.fna&oh=00_AfCzLJnRhIvDJdAujys8uY0cbJhvsjhiDuHCTF80la6cGA&oe=63C956AB',
                      ),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 150,
              height: 90,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(backgroundColor: Colors.green.shade400, radius: 8),
                        const SizedBox(width: 5),
                        const Text('City', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    decoration: BoxDecoration(color: Colors.green.shade400, borderRadius: BorderRadius.circular(6)),
                    child: Text('$randomValueString, M folowers'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
