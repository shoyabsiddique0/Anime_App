import 'package:anime_app/AnimeSuggestion/View/AnimeSuggestion_view.dart';
import 'package:anime_app/HomePage/Bindings/HomeBinding.dart';
import 'package:anime_app/HomePage/View/HomeView.dart';
import 'package:anime_app/ImageShow/imageShow.dart';
import 'package:anime_app/Internationalization/Languages.dart';
import 'package:anime_app/Loading%20Screen/Bindings/LoadingBinding.dart';
import 'package:anime_app/Loading%20Screen/View/Loading.dart';
import 'package:anime_app/Random%20Quote/RandomQuote.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    locale: const Locale("en", "US"),
    fallbackLocale: const Locale("en", "US"),
    translations: Languages(),
    initialRoute: '/',
    getPages: [
      GetPage(name: '/', page: ()=>HomeView(), binding: HomeBinding()),
      GetPage(name: '/image', page: ()=>ImageShow()),
      GetPage(name: '/suggestion', page: ()=>AnimeSuggestion()),
      GetPage(name: '/quotes', page: ()=>RandomQuote()),
      GetPage(name: '/loading', page: ()=> const Loading(), binding: LoadingBinding())
    ],
    debugShowCheckedModeBanner: false,
  ));
}