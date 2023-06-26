class Albumlist {
  final String nameAl;
  final String numberli;
  final String imgAl;
  Albumlist({
    required this.numberli,
    required this.imgAl,
    required this.nameAl,
  });
}

List<Albumlist> albumlist = [
  Albumlist(
      numberli: '6', imgAl: 'assets/images/Album_Lover.jpg', nameAl: 'Loves'),
  Albumlist(
      numberli: '12',
      imgAl:
          'assets/images/eoy-2018_baby-gunna_sq-955e8aa49a306aac5e043cd04a275ec9ae0309c0.jpg',
      nameAl: 'Rap'),
  Albumlist(
      numberli: '3',
      imgAl:
          'assets/images/lana_del_rey_born_to_die_my_version_by_angeldavidcs_ddzzrjx-pre.jpg',
      nameAl: 'My'),
  Albumlist(
      numberli: '5',
      imgAl: 'assets/images/best-rap-album-covers-7.jpg',
      nameAl: '50cent'),
  Albumlist(
      numberli: '2',
      imgAl:
          'assets/images/Album Cover Template for New Wave Music CD copy.jpg',
      nameAl: 'Old Music'),
];
