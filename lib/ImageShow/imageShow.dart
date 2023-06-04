import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:path_provider/path_provider.dart';

class ImageShow extends StatelessWidget {
  ImageShow({super.key});
  var imageLink = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Here is your Content"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(imageLink,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fitWidth,
              loadingBuilder: (context, child, loadingProgress){
                if(loadingProgress == null){
                  return child;
                }else
                return Center(child: const CircularProgressIndicator());
              },
              frameBuilder: (context, child, frame, wasSynchronouslyLoaded){
                return child;
              },
            ),
          ],
        ),
      ),
    );
  }
}
