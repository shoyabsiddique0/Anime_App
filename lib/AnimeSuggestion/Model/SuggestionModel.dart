class SuggestionModel{
  final String imageUrl;
  final String title;
  final String status;
  final String type;
  final String duration;
  final String source;
  final String? popularity;
  final String synopsis;
  final String episodes;
  final List Genre;
  SuggestionModel(this.imageUrl, this.title, this.status, this.type, this.duration, this.source, this.popularity, this.synopsis, this.Genre, this.episodes);
  factory SuggestionModel.fromJson(Map<dynamic, dynamic> json){
    return SuggestionModel(
        json['images']['jpg']['image_url'],
        json['title'] ?? " Be Naam Hai Yeh Anime",
        json['status'] ?? "Hame nahi pata bhaiya",
        json['type'] ?? "Type? woh kya hota hai",
        json['duration'] ?? "Chalu hote hi khatam ho gaya",
        json['source'] ?? "Shhhhh!",
        json['popularity'] == null ? "Itna bhi popular nahi hai yeh" : json['popularity'].toString(),
        json['synopsis'] ?? "Bhaiya kya hi bataye kya mast story hai",
        json['genres'] == null ? ["Genre", "Nahi", "Hai", "Iska", "Kuch"] : json['genres'].map((e) => GenreModel.fromMap(e)).toList(),
      json['episodes'] == null ? "0" : json['episodes'].toString()
    );
  }
}
class GenreModel{
  final String type;
  final String anime;

  GenreModel(this.type, this.anime);
  factory GenreModel.fromMap(Map<String, dynamic> json){
    return GenreModel(
      json['type'],
      json['name']
    );
  }
}