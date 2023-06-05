import 'package:anime_app/AnimeSuggestion/Model/SuggestionModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnimeSuggestion extends StatelessWidget {
  AnimeSuggestion({super.key});
  final SuggestionModel data = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Random Anime Suggestion"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                data.imageUrl,
                width: MediaQuery.of(context).size.width,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) {
                    return child;
                  } else {
                    return const Center(child: CircularProgressIndicator());
                  }
                },
                frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
                  return child;
                },
                fit: BoxFit.fitWidth,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  "Genre: ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: data.Genre.map((e) => Text(e.anime+",  ",
                    style: const TextStyle(
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold
                    ),
                  )).toList(),
                ),
              ],
            ),
            const SizedBox(height: 10,),
            Row(
              children: [
                const Text(
                  "Title: ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  ),
                ),
                Flexible(
                  child: Text(
                    data.title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10,),
            Row(
              children: [
                const Text(
                  "Duration: ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  ),
                ),
                Text(
                  data.duration,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10,),
            Row(
              children: [
                const Text(
                  "Popularity: ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  ),
                ),
                Text(
                  "${data.popularity}",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10,),
            Row(
              children: [
                const Text(
                  "Source: ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  ),
                ),
                Text(
                  data.source,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10,),
            Row(
              children: [
                const Text(
                  "Status: ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  ),
                ),
                Text(
                  data.status,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10,),
            Row(
              children: [
                const Text(
                  "Type: ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  ),
                ),
                Text(
                  data.type,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10,),
            Row(
              children: [
                const Text(
                  "Number of Episodes: ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  ),
                ),
                Text(
                  data.episodes,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10,),
            Row(
              children: [
                const Text(
                  "Synopsis: ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  ),
                ),
                Flexible(
                  child: RichText(
                    text: TextSpan(
                      text: data.synopsis,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          fontStyle: FontStyle.italic,
                        color: Colors.black
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
