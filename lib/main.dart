import 'package:anime_app/AnimeSuggestion/View/AnimeSuggestion_view.dart';
import 'package:anime_app/HomePage/View/HomeView.dart';
import 'package:anime_app/ImageShow/imageShow.dart';
import 'package:anime_app/Random%20Quote/RandomQuote.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    initialRoute: '/',
    getPages: [
      GetPage(name: '/', page: ()=>HomeView()),
      GetPage(name: '/image', page: ()=>ImageShow()),
      GetPage(name: '/suggestion', page: ()=>AnimeSuggestion()),
      GetPage(name: '/quotes', page: ()=>RandomQuote()),
    ],
  ));
}