import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RandomQuote extends StatelessWidget {
  RandomQuote({super.key});
  final List data = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Random Anime Quote"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.black12,
              border: Border.all(color: Colors.black, width: 1),
              borderRadius: const BorderRadius.all(Radius.circular(30))
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Quote: ${data[0]}",
                  style: const TextStyle(
                    fontSize: 30
                  ),
                ),
                Text(
                  "Character: ${data[1]}",
                  style: const TextStyle(
                      fontSize: 20
                  ),
                ),
                Text(
                  "Anime: ${data[2]}",
                  style: const TextStyle(
                      fontSize: 20
                  ),
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}
