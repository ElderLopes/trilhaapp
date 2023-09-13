import 'package:flutter/material.dart';
import 'package:trilhaapp/shared/app_images.dart';

class ImageAssetsPage extends StatefulWidget {
  const ImageAssetsPage({super.key});

  @override
  State<ImageAssetsPage> createState() => _ImageAssetsPageState();
}

class _ImageAssetsPageState extends State<ImageAssetsPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
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
    );
  }
}
