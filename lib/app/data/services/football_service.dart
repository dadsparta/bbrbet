import 'dart:convert';

import 'package:bbrbet/app/data/models/match_model.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';

class FootballApiService extends GetxService{
  Future<List<FootballMatch>> fetchMatches() async {
    final response = await http.get(
      Uri.parse('https://api.football-data.org/v4/matches/'),
      headers: {'X-Auth-Token': 'c183ac195ae345f7a8d6b5a063f025c0'},
    );

    if (response.statusCode == 200) {
      Map<String, dynamic> jsonResponse = json.decode(response.body);
      List<dynamic> matches = jsonResponse['matches'];
      return matches.map((item) => FootballMatch.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load matches from API');
    }
  }
}

