import 'dart:async';
import 'package:anime_app/AnimeSuggestion/Model/SuggestionModel.dart';
import 'package:anime_app/HomePage/Controller/HomeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoadingController extends GetxController{
  List Quote = [];
  Map data = {};
  String imageLink = "";
  var controller = Get.find<HomeController>(tag: "controller");
  void goToQuote() async{
    Quote = await controller.getQuote();
    const AsyncSnapshot.waiting();
    Get.offNamed("/quotes", arguments: Quote);
  }
  void goToAnime() async{
    data = await controller.getAnime();
    const AsyncSnapshot.waiting();
    SuggestionModel model = SuggestionModel.fromJson(data);
    Get.offNamed("/suggestion", arguments: model);
  }
  void goToImage(String type) async{
    imageLink = await controller.getLink("https://kyoko.rei.my.id/api/$type.php");
    const AsyncSnapshot.waiting();
    if(imageLink !="") {
      Get.offNamed("/image", arguments: imageLink);
    }
  }
}