import 'dart:async';

import 'package:anime_app/AnimeSuggestion/Model/SuggestionModel.dart';
import 'package:anime_app/AnimeSuggestion/View/AnimeSuggestion_view.dart';
import 'package:anime_app/HomePage/Controller/HomeController.dart';
import 'package:anime_app/ImageShow/imageShow.dart';
import 'package:anime_app/Random%20Quote/RandomQuote.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});
  HomeController controller = Get.put(HomeController());
  String imageLink="";
  List Quote = [];
  Map data = {};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text("Random Anime Quote"),
            subtitle: Text("View a random anime quote"),
            onTap: () async{
              Quote = await controller.getQuote();
              AsyncSnapshot.waiting();
              Get.toNamed("/quotes", arguments: Quote);
            },
          ),
          ListTile(
            title: Text("Random Anime"),
            subtitle: Text("Get Information About a Random Anime"),
            onTap: () async{
              data = await controller.getAnime();
              AsyncSnapshot.waiting();
              SuggestionModel model = SuggestionModel.fromJson(data);
              Get.toNamed("/suggestion", arguments: model);
            },
          ),
          ListTile(
            title: Text("Random Anime Kick"),
            subtitle: Text("Get a Gif of Random Anime Kick"),
            onTap: () async{
              imageLink = await controller.getLink("https://kyoko.rei.my.id/api/kick.php");
              AsyncSnapshot.waiting();
              if(imageLink !="") {
                  Get.toNamed("/image", arguments: imageLink);
                }
              },
          ),
          ListTile(
            title: Text("Random Anime Poke"),
            subtitle: Text("Get a gif of anime poking"),
            onTap: () async {
              imageLink = await controller.getLink("https://kyoko.rei.my.id/api/poke.php");
              AsyncSnapshot.waiting();
              if(imageLink !="") {
                Get.toNamed("/image", arguments: imageLink);
              }
            },
          ),
          ListTile(
            title: Text("Random Anime Pat"),
            subtitle: Text("Get a gif of anime patting"),
            onTap: () async {
              imageLink = await controller.getLink("https://kyoko.rei.my.id/api/pat.php");AsyncSnapshot.waiting();
              if(imageLink !="") {
                Get.toNamed("/image", arguments: imageLink);
              }
            },
          ),
          ListTile(
            title: Text("Random Anime Dance"),
            subtitle: Text("Get a gif of random anime dance"),
            onTap: () async {
              imageLink = await controller.getLink("https://kyoko.rei.my.id/api/dance.php");
              AsyncSnapshot.waiting();
              if(imageLink !="") {
                Get.toNamed("/image", arguments: imageLink);
              }
            },
          ),
          ListTile(
            title: Text("Random Anime Cuddle"),
            subtitle: Text("Get a gif of random anime cuddle moment"),
            onTap: () async {
              imageLink = await controller.getLink("https://kyoko.rei.my.id/api/cuddle.php");
              AsyncSnapshot.waiting();
              if(imageLink !="") {
                Get.toNamed("/image", arguments: imageLink);
              }
            },
          ),
          ListTile(
            title: Text("Random Anime HighFive"),
            subtitle: Text("Get a gif of anime highfive"),
            onTap: () async {
              imageLink = await controller.getLink("https://kyoko.rei.my.id/api/highfive.php");
              AsyncSnapshot.waiting();
              if(imageLink !="") {
                Get.toNamed("/image", arguments: imageLink);
              }
            },
          ),
          ListTile(
            title: Text("Random Anime Wink"),
            subtitle: Text("Get a gif of anime winking"),
            onTap: () async {
              imageLink = await controller.getLink("https://kyoko.rei.my.id/api/wink.php");
              AsyncSnapshot.waiting();
              if(imageLink !="") {
                Get.toNamed("/image", arguments: imageLink);
              }
            },
          ),
          ListTile(
            title: Text("Random Anime Hug"),
            subtitle: Text("Get a gif of anime Hugging"),
            onTap: () async {
              imageLink = await controller.getLink("https://kyoko.rei.my.id/api/hug.php");
              AsyncSnapshot.waiting();
              if(imageLink !="") {
                Get.toNamed("/image", arguments: imageLink);
              }
            },
          ),
          ListTile(
            title: Text("Random Anime Bonk"),
            subtitle: Text("Get a gif of anime bonking"),
            onTap: () async {
              imageLink = await controller.getLink("https://kyoko.rei.my.id/api/bonk.php");
              AsyncSnapshot.waiting();
              if(imageLink !="") {
                Get.toNamed("/image", arguments: imageLink);
              }
            },
          ),
          ListTile(
            title: Text("Random Anime Waifu"),
            subtitle: Text("Get an image of anime waifu"),
            onTap: () async {
              imageLink = await controller.getLink("https://kyoko.rei.my.id/api/sfw.php");
              AsyncSnapshot.waiting();
              if(imageLink !="") {
                Get.toNamed("/image", arguments: imageLink);
              }
            },
          ),

        ],
      )
    );
  }
}
