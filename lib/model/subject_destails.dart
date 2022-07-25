class SubjectDetail {
  final String name;
  final String description;
  final String imageUrl;
  static List<SubjectDetail> listOfSubjects = [
    SubjectDetail(
        name: 'General Knowledge',
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. ',
        imageUrl: 'assets/subject/pic1.png'),
    SubjectDetail(
        name: 'Pakistan Affairs',
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. ',
        imageUrl: 'assets/subject/pic2.png'),
    SubjectDetail(
        name: 'Everyday Science',
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. ',
        imageUrl: 'assets/subject/pic3.png'),
    SubjectDetail(
        name: 'Islamic Study',
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. ',
        imageUrl: 'assets/subject/pic4.png'),
    SubjectDetail(
        name: 'Pedagogy',
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. ',
        imageUrl: 'assets/subject/pic5.png'),
  ];

  SubjectDetail(
      {required this.name, required this.description, required this.imageUrl});
}
