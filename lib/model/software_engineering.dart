class SoftwareEngineering {
  final String name;
  final String description;
  final String imageUrl;
  static List<SoftwareEngineering> listOfSubjects = [
    SoftwareEngineering(
        name: 'Operating System',
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. ',
        imageUrl: 'assets/subject/pic1.png'),
    SoftwareEngineering(
        name: 'Machine Learning',
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. ',
        imageUrl: 'assets/subject/pic2.png'),
    SoftwareEngineering(
        name: 'Theory of Automata',
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. ',
        imageUrl: 'assets/subject/pic3.png'),
    SoftwareEngineering(
        name: 'Date Base',
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. ',
        imageUrl: 'assets/subject/pic4.png'),
    SoftwareEngineering(
        name: 'Computer Programming',
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. ',
        imageUrl: 'assets/subject/pic5.png'),
    SoftwareEngineering(
        name: 'Computer Vision',
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. ',
        imageUrl: 'assets/subject/pic5.png'),
  ];

  SoftwareEngineering(
      {required this.name, required this.description, required this.imageUrl});
}
