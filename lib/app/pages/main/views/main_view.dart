import 'package:bbrbet/app/data/models/match_model.dart';
import 'package:bbrbet/app/pages/main/controllers/main_controller.dart';
import 'package:bbrbet/app/widgets/match_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainView extends GetView<MainController> {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<FootballMatch>>(
      future: controller.footballMatches,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasError) {
          return Text(
            'Error: ${snapshot.error}',
            style: TextStyle(color: Colors.white),
          );
        } else {
          return Container(
            child: ListView(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              children: [
                SearchBar(
                  controller: null,
                  padding: const MaterialStatePropertyAll<EdgeInsets>(
                      EdgeInsets.symmetric(horizontal: 16.0)),
                  onTap: () {},
                  onChanged: (_) {},
                  leading: const Icon(Icons.search),
                  trailing: <Widget>[
                    Tooltip(
                      message: 'Change brightness mode',
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.keyboard_voice_outlined),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return MatchCard(
                      titleOfFirstTeam: snapshot.data![index].firstTeam,
                      titleOfSecondTeam: snapshot.data![index].secondTeam,
                      titleOfLeagueTeam: snapshot.data![index].league,
                      firstTeamLogoPath:
                      snapshot.data![index].firstTeamLogoPath,
                      secondTeamLogoPath:
                      snapshot.data![index].secondTeamLogoPath,
                      firstTeamScore: snapshot.data![index].goalsFirstTeam,
                      secondTeamScore: snapshot.data![index].goalsSecondTeam,
                      dateOfMatch: snapshot.data![index].startOfGame,
                      status: snapshot.data![index].status, leagueEmblemPath: snapshot.data![index].leagueLogo,
                    );
                  },
                  shrinkWrap: true,
                  itemCount: snapshot.data!.length,
                )
              ],
            ),
          );
        }
      },
    );
  }
}

