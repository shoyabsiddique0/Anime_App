import 'dart:convert';

import 'package:anime_app/AnimeSuggestion/Model/SuggestionModel.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
class HomeController extends GetxController{
  Future<String> getLink(String url) async{
    var response = await http.get(Uri.parse(url));
    var data = jsonDecode(response.body);
    print(data['apiResult']['url'][0]);
    return data['apiResult']['url'][0];
  }
  Future<List> getQuote() async{
    var response = await http.get(Uri.parse("https://kyoko.rei.my.id/api/quotes.php"));
    var data = jsonDecode(response.body);
    return [data['apiResult'][0]['english'], data['apiResult'][0]['character'], data['apiResult'][0]['anime']];
  }
  Future<Map> getAnime() async{
    var response = await http.get(Uri.parse("https://kyoko.rei.my.id/api/random.php"));
    var data = jsonDecode(response.body);
    // print(data['apiResult']['url'][0]['data'] as Map);
    return data['apiResult']['url'][0]['data'] as Map;
  }
}