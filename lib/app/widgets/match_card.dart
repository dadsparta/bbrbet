import 'package:bbrbet/core/theme/app_colors.dart';
import 'package:bbrbet/core/theme/texts.dart';
import 'package:flutter/material.dart';

class MatchCard extends StatefulWidget {
  final String titleOfFirstTeam;
  final String titleOfSecondTeam;
  final String titleOfLeagueTeam;
  final String firstTeamLogoPath;
  final String secondTeamLogoPath;
  final String dateOfMatch;
  final String status;
  final String leagueEmblemPath;
  final int? firstTeamScore;
  final int? secondTeamScore;

  const MatchCard(
      {super.key,
      required this.titleOfFirstTeam,
      required this.titleOfSecondTeam,
      required this.titleOfLeagueTeam,
      required this.firstTeamLogoPath,
      required this.secondTeamLogoPath,
      required this.dateOfMatch,
      required this.status,
      required this.leagueEmblemPath,
      this.firstTeamScore,
      this.secondTeamScore});

  @override
  State<MatchCard> createState() => _MatchCardState();
}

class _MatchCardState extends State<MatchCard> {
  String checkOnEmptyImage(String path) {
    print('path: ' + path);
    if (!path.endsWith('svg')) {
      return path;
    } else {
      return 'https://avatars.mds.yandex.net/i?id=bed9f63bb84a772a9bc1f52314cd9dce148c039e-12438744-images-thumbs&n=13';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
      child: Container(
        padding: EdgeInsets.all(14),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.matchCardColor,
          border:
              widget.firstTeamScore != null && widget.secondTeamScore != null
                  ? Border.all(width: 1, color: AppColors.activeIconColor)
                  : Border(),
        ),
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: [
            Row(children: [
              CircleAvatar(
                  child: SizedBox(
                    child: Image.network(!widget.leagueEmblemPath
                            .endsWith('svg')
                        ? widget.leagueEmblemPath
                        : 'https://apuestivas.com/wp-content/uploads/2016/01/Logo-Copa_Bridgestone_Libertadores.png'),
                    width: 20,
                    height: 20,
                  ),
                  backgroundColor: AppColors.secondColor,
                  radius: 14),
              SizedBox(
                width: 4,
              ),
              AppTexts.lowCardMatch(widget.titleOfLeagueTeam)
            ]),
            GridView.count(
              padding: EdgeInsets.all(12),
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              crossAxisCount: 3,
              children: [
                ListView(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: [
                    CircleAvatar(
                      radius: 28,
                      child: Image.network(
                          checkOnEmptyImage(widget.firstTeamLogoPath)),
                    ),
                    AppTexts.titleOfClub(widget.titleOfFirstTeam)
                  ],
                ),
                ListView(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: [
                    widget.firstTeamScore != null &&
                            widget.secondTeamScore != null
                        ? AppTexts.score(widget.firstTeamScore.toString() +
                            ':' +
                            widget.secondTeamScore.toString())
                        : AppTexts.form('comming'),
                    AppTexts.lowCardMatch(
                      widget.dateOfMatch
                          .substring(0, widget.dateOfMatch.length - 10),
                    ),
                  ],
                ),
                ListView(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: [
                    CircleAvatar(
                      child: Image.network(
                          checkOnEmptyImage(widget.secondTeamLogoPath)),
                      radius: 28,
                    ),
                    AppTexts.titleOfClub(widget.titleOfSecondTeam)
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
