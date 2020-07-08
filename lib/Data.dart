class PlanetInfo {
  final int position;
  final String name;
  final String iconImage;
  final String description;
  final List<String> images;

  PlanetInfo({
    this.position,
    this.name,
    this.iconImage,
    this.description,
    this.images
  });
}

List<PlanetInfo> planets = [
  PlanetInfo(
      position: 1,
      name: 'Barcelona',
      iconImage: 'assets/teams/barce.png',
      description:
      "Barcelona, commonly referred to as Barcelona and colloquially known as Barça, is a Spanish professional football club based in Barcelona, Catalonia, Spain",
      images: [
        'assets/teams/barce1.jpg',
        'assets/teams/barce2.jpg',
        'assets/teams/barce3.jpeg',
        'assets/teams/barce4.jpg',
      ]),
  PlanetInfo(
      position: 2,
      name: 'Bayern',
      iconImage: 'assets/teams/bayern.png',
      description:
      "Bayern München e.V., commonly known as FC Bayern München, FCB, Bayern Munich, or FC Bayern, is a German professional sports club based in Munich, Bavaria",
      images: [
        'assets/teams/bayern1.webp',
        'assets/teams/bayern2.jpg',
        'assets/teams/bayern3.jpg',
        'assets/teams/bayern4.jpg',
      ]),
  PlanetInfo(
      position: 3,
      name: 'Chelsea',
      iconImage: 'assets/teams/chelsea.png',
      description:
      "Chelsea Football Club are an English professional football club based in Fulham, London. Founded in 1905",
      images: [
        'assets/teams/chelsea1.jpg',
        'assets/teams/chelsea2.jpg',
        'assets/teams/chelsea3.jpg',
        'assets/teams/chelsea4.jpg',
      ]),
  PlanetInfo(
      position: 4,
      name: 'Juventus',
      iconImage: 'assets/teams/juve.png',
      description:
      "Juventus Football Club, colloquially known as Juventus and Juve, is an Italian professional association football club based in Turin",
      images: [
        'assets/teams/juve1.jpg',
        'assets/teams/juve2.jpg',
        'assets/teams/juve3.webp',
        'assets/teams/juve4.jpg',
      ]),
  PlanetInfo(
      position: 5,
      name: 'Liverpool',
      iconImage: 'assets/teams/liverpool.png',
      description:
      "Liverpool Football Club is a professional football club in Liverpool, England.",
      images: [
        'assets/teams/liverpool1.jpg',
        'assets/teams/liverpool2.jpg',
        'assets/teams/liverpool3.jpg',
        'assets/teams/liverpool4.jpg',
      ]),
  PlanetInfo(
      position: 6,
      name: 'M.City',
      iconImage: 'assets/teams/mancity.png',
      description:
      "Manchester City Football Club is an English football club based in Manchester that competes in the Premier League, the top flight of English football.",
      images: [
        'assets/teams/mancity1.webp',
        'assets/teams/mancity2.jpg',
        'assets/teams/mancity3.jpg',
        'assets/teams/mancity4.jpg',
      ]),
  PlanetInfo(
      position: 7,
      name: 'M.United',
      iconImage: 'assets/teams/manu.png',
      description:
      "Manchester United Football Club is a professional football club based in Old Trafford, Greater Manchester, England.",
      images: [
        'assets/teams/manu1.jpg',
        'assets/teams/manu2.jpg',
        'assets/teams/manu3.jpg',
        'assets/teams/manu4.jpg',
      ]),
  PlanetInfo(
      position: 8,
      name: 'R.Madrid',
      iconImage: 'assets/teams/realmadrid.png',
      description:
      "Real Madrid, is a Spanish professional football club based in Madrid. Founded on 6 March 1902 as Madrid Football Club.",
      images: [
        'assets/teams/realmadrid1.jpg',
        'assets/teams/realmadrid2.jpg',
        'assets/teams/realmadrid3.jpg',
        'assets/teams/realmadrid4.jpg',
      ]),
];