
import 'package:anime_app/AnimeSuggestion/Model/SuggestionModel.dart';
import 'package:anime_app/HomePage/Controller/HomeController.dart';
import 'package:anime_app/Loading%20Screen/View/Loading.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});
  HomeController controller = Get.put(HomeController(), tag: "controller", permanent: true);
  String imageLink="";
  List Quote = [];
  Map data = {};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home".tr),
        actions: [
          DropdownButton(items: [
            DropdownMenuItem(value:"English", child: Row(
              children: [
                Image.asset("assets/images/english.png",
                width: 30,
                ),
                const Text("English"),
              ],
            )),DropdownMenuItem(value:"Hindi", child: Row(
              children: [
                Image.asset("assets/images/hindi.png",
                width: 30,
                ),
                const Text("Hindi"),
              ],
            )),DropdownMenuItem(value:"French", child: Row(
              children: [
                Image.asset("assets/images/french.png",
                width: 30,
                ),
                const Text("French"),
              ],
            )),
          ], onChanged: (val){
            controller.LangUpdate(val!);
          },
            hint: const Icon(Icons.translate_rounded),
          ),
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text("Random Anime Quote".tr),
            subtitle: Text("View a random anime quote".tr),
            onTap: () {
              Get.toNamed('/loading', arguments: [0, null]);
            },
          ),
          ListTile(
            title: Text("Random Anime".tr),
            subtitle: Text("Get Information About a Random Anime".tr),
            onTap: () {
              Get.toNamed('/loading', arguments: [1, null]);
            },
          ),
          ListTile(
            title: Text("Random Anime Kick".tr),
            subtitle: Text("Get a Gif of Random Anime Kick".tr),
            onTap: () {
                Get.toNamed('/loading', arguments: [2, 'kick']);
              },
          ),
          ListTile(
            title: Text("Random Anime Poke".tr),
            subtitle: Text("Get a gif of anime poking".tr),
            onTap: () {
                Get.to(()=> Loading(), arguments: [2, 'poke']);
            },
          ),
          ListTile(
            title: Text("Random Anime Pat".tr),
            subtitle: Text("Get a gif of anime patting".tr),
            onTap: () async {
              Get.toNamed('/loading', arguments: [2, 'pat']);
            },
          ),
          ListTile(
            title: Text("Random Anime Dance".tr),
            subtitle: Text("Get a gif of random anime dance".tr),
            onTap: () async {
              Get.toNamed('/loading', arguments: [2, 'dance']);
            },
          ),
          ListTile(
            title: Text("Random Anime Cuddle".tr),
            subtitle: Text("Get a gif of random anime cuddle moment".tr),
            onTap: () async {
              Get.toNamed('/loading', arguments: [2, 'cuddle']);
            },
          ),
          ListTile(
            title: Text("Random Anime HighFive".tr),
            subtitle: Text("Get a gif of anime highfive".tr),
            onTap: () async {
              Get.toNamed('/loading', arguments: [2, 'highfive']);
            },
          ),
          ListTile(
            title: Text("Random Anime Wink".tr),
            subtitle: Text("Get a gif of anime winking".tr),
            onTap: () async {
              Get.toNamed('/loading', arguments: [2, 'wink']);
            },
          ),
          ListTile(
            title: Text("Random Anime Hug".tr),
            subtitle: Text("Get a gif of anime Hugging".tr),
            onTap: () async {
              Get.toNamed('/loading', arguments: [2, 'hug']);
            },
          ),
          ListTile(
            title: Text("Random Anime Bonk".tr),
            subtitle: Text("Get a gif of anime bonking".tr),
            onTap: () async {
              Get.toNamed('/loading', arguments: [2, 'bonk']);
            },
          ),
          ListTile(
            title: Text("Random Anime Waifu".tr),
            subtitle: Text("Get an image of anime waifu".tr),
            onTap: () async {
              Get.toNamed('/loading', arguments: [2, 'sfw']);
            },
          ),
        ],
      )
    );
  }
}
