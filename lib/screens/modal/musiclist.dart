class Musiclist {
  final String namemusic;
  final String cover;
  final String singer;
  final String gif;
  Musiclist({
    this.gif = 'assets/images/Drake-Chunky-Knit-Sweater-Hotline-Bling.gif',
    required this.namemusic,
    required this.cover,
    required this.singer,
  });
}

List<Musiclist> musiclist = [
  Musiclist(
      namemusic: 'Kolohom',
      cover: 'assets/images/poori_kolohom.jpg',
      singer: 'GodPoori',
      gif: 'assets/images/godpoorigif.gif'),
  Musiclist(
      namemusic: 'Gizeh',
      cover: 'assets/images/sepehr_khalse & hiphopologist_gizeh.jpg',
      singer: 'Hyphologist',
      gif: 'assets/images/giz.gif'),
  Musiclist(
      namemusic: 'Zedbazi',
      cover: 'assets/images/ZedBazi-Tabestoon-Kootahe.jpg',
      singer: 'sigar sorati'),
  Musiclist(
      namemusic: 'Eminem',
      cover: 'assets/images/Eminem-Rap-God-music-video.jpg',
      singer: 'Rap Of God'),
  Musiclist(
      namemusic: 'Pop Smoke',
      cover: 'assets/images/artworks-000564488507-04vehn-t500x500.jpg',
      singer: 'Dior'),
  Musiclist(
      namemusic: 'Drake',
      cover: 'assets/images/artworks-000564488507-04vehn-t500x500.jpg',
      singer: 'Gods Plane'),
];
