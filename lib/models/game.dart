class Game {
  String bgImage;
  String icon;
  String name;
  String type;
  num score;
  num download;
  num review;
  String description;
  List<String> images;

  Game(
      this.bgImage,
      this.icon,
      this.name,
      this.type,
      this.score,
      this.download,
      this.review,
      this.description,
      this.images
      );

  static List<Game> game() {
    return [
      Game(
          "assets/images/ori1.jpg",
          "assets/images/ori_logo.png",
          "Ori and the Forest",
          "Adventure",
          3.8,
          382,
          324,
          "Ori n'est pas un étranger face au danger. Lorsqu'un vol tragique met en péril le jeune hibou Ku, seul le courage pourra réunir une famille déchirée. Plongez dans une aventure poétique au cœur d'une forêt en perdition, maîtrisez des compétences uniques et affrontez d'imposants ennemis pour restaurer la lumière.",
          [
            "assets/images/ori2.jpg",
            "assets/images/ori3.jpg",
            "assets/images/ori4.jpg"
          ]
      ),
      Game(
          "assets/images/rl1.jpg",
          "assets/images/rl_logo.png",
          "Rayman legends",
          "Adventure",
          2.7,
          226,
          148,
          "Rayman n'est pas un étranger face au danger. Lorsqu'un vol tragique met en péril le jeune hibou Ku, seul le courage pourra réunir une famille déchirée. Plongez dans une aventure poétique au cœur d'une forêt en perdition, maîtrisez des compétences uniques et affrontez d'imposants ennemis pour restaurer la lumière.",
          [
            "assets/images/rl2.jpg",
            "assets/images/rl3.jpg",
            "assets/images/rl4.jpg"
            ,"assets/images/rl5.jpg"
          ]
      ),

    ];
  }
}