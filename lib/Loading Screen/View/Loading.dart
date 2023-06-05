import 'dart:ui';

import 'package:anime_app/Loading%20Screen/Controller/Loading_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  final controller = Get.find<LoadingController>();
  @override
  void initState() {
    change();
    super.initState();
  }
  List data = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('assets/images/loading.gif',
          // height: ScreenUtil.defaultSize.height,
          width: ScreenUtil.defaultSize.width,
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
  void change(){
    if(data[0] == 0){
      controller.goToQuote();
    }
    else if(data[0] == 1){
      controller.goToAnime();
    }
    else if(data[0] == 2){
      controller.goToImage(data[1]);
    }
  }
}