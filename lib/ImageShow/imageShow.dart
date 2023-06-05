import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ImageShow extends StatelessWidget {
  ImageShow({super.key});
  final imageLink = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Here is your Content"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FadeInImage.assetNetwork(
            placeholder: 'assets/images/loading.gif',
            image: imageLink,
            width: ScreenUtil.defaultSize.width,
            filterQuality: FilterQuality.high,
            fit: BoxFit.fitHeight,
          ),
        ],
      ),
    );
  }
}
