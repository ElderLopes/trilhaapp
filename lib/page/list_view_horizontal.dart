import 'package:flutter/material.dart';
import 'package:trilhaapp/shared/app_images.dart';

class ListViewHorizontal extends StatefulWidget {
  const ListViewHorizontal({super.key});

  @override
  State<ListViewHorizontal> createState() => _ListViewHorizontalState();
}

class _ListViewHorizontalState extends State<ListViewHorizontal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Image.asset(
                  AppImages.img1,
                  height: 100,
                ),
                Image.asset(
                  AppImages.img2,
                  height: 100,
                ),
                Image.asset(
                  AppImages.img3,
                  height: 100,
                ),
                Image.asset(
                  AppImages.img4,
                  height: 100,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
