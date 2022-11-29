import 'dart:convert';

// To parse this JSON data, do
//
//     final food = foodFromJson(jsonString);



// To parse this JSON data, do
//
//     final result = resultFromJson(jsonString);


List<Map<String, Result>> resultFromJson(String str) => List<Map<String, Result>>.from(json.decode(str).map((x) => Map.from(x).map((k, v) => MapEntry<String, Result>(k, Result.fromJson(v)))));

String resultToJson(List<Map<String, Result>> data) => json.encode(List<dynamic>.from(data.map((x) => Map.from(x).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())))));

class Result {
  Result({
    this.descripton,
    this.score,
  });

  String? descripton;
  double? score;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
    descripton: json["descripton"],
    score: json["score"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "descripton": descripton,
    "score": score,
  };
}



List<Food> foodFromJson(String str) => List<Food>.from(json.decode(str).map((x) => Food.fromJson(x)));

String foodToJson(List<Food> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Food {
  Food({
    this.korean,
    this.english,
    this.latin,
    this.servingsize,
    this.energy,
    this.protein,
    this.fat,
    this.carbohydrate,
  });

  String? korean;
  String? english;
  String? latin;
  int? servingsize;
  dynamic energy;
  double? protein;
  String? fat;
  String? carbohydrate;

  factory Food.fromJson(Map<String, dynamic> json) => Food(
    korean: json["korean"],
    english: json["english"],
    latin: json["latin"],
    servingsize: json["servingsize"],
    energy: json["energy"],
    protein: json["protein"].toDouble(),
    fat: json["fat"],
    carbohydrate: json["carbohydrate"],
  );

  Map<String, dynamic> toJson() => {
    "korean": korean,
    "english": english,
    "latin": latin,
    "servingsize": servingsize,
    "energy": energy,
    "protein": protein,
    "fat": fat,
    "carbohydrate": carbohydrate,
  };
}

class FoodInfo{
  FoodInfo({
    required this.food,
    required this.score
});

  Food food;
  int score;
}