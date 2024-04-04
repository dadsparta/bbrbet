class FootballMatch {
  final String firstTeam;
  final String secondTeam;
  final String league;
  final String firstTeamLogoPath;
  final String secondTeamLogoPath;
  final String startOfGame;
  final String status;
  final int? goalsFirstTeam;
  final int? goalsSecondTeam;

  final String leagueLogo;

  FootballMatch(
      this.league,
      this.firstTeamLogoPath,
      this.secondTeamLogoPath,
      this.startOfGame,
      this.status,
      this.leagueLogo,
      this.goalsFirstTeam,
      this.goalsSecondTeam,
      {required this.firstTeam,
      required this.secondTeam});

  factory FootballMatch.fromJson(Map<String, dynamic> json) {
    return FootballMatch(
      json['competition']['name'],
      json['homeTeam']['crest'],
      json['awayTeam']['crest'],
      json['utcDate'],
      json['status'],
      json['competition']['emblem'],
      json['score']['fullTime']['home'],
      json['score']['fullTime']['away'],
      firstTeam: json['homeTeam']['name'],
      secondTeam: json['awayTeam']['name'],
    );
  }
}
