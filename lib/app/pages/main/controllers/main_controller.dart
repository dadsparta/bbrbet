import 'package:bbrbet/app/data/models/match_model.dart';
import 'package:bbrbet/app/data/services/football_service.dart';
import 'package:get/get.dart';

class MainController extends GetxController{
  Future<List<FootballMatch>>? footballMatches;
  final FootballApiService footballApiService = Get.find();

  @override
  void onInit(){
    super.onInit();
    fetchAllMatches();
  }

  void fetchAllMatches() async {
    footballMatches = footballApiService.fetchMatches();
    update();
  }
}