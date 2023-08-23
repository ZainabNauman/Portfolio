class Project {
  final String title;
  final String description;
  final String imageUrl;
  final String githubUrl;
  final String demoUrl;

  Project({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.githubUrl,
    required this.demoUrl,
  });
}

List<Project> projects = [
  Project(
    title: 'Login Sign Up',
    description:
        'In this project, i have created login sign up pages using dart.',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwXWVBkL0T7gOvr8g8FaoNGAhT_SvRLfJ03g&usqp=CAU',
    githubUrl: 'https://github.com/yourusername/project1',
    demoUrl: 'https://yourprojectdemo.com',
  ),
  Project(
    title: 'Firebase Project',
    description: 'In this project, i have created notes using firebase.',
    imageUrl:
        'https://www.talentica.com/wp-content/uploads/2021/04/Firebase-blog-feature-image-1.jpg',
    githubUrl: 'https://github.com/yourusername/project1',
    demoUrl: 'https://yourprojectdemo.com',
  ),
  Project(
    title: 'Chat',
    description:
        'In this project, i have created a chat application using firease.',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvfmT0XGX8xoPJsHruk10MKPNuA4ngTC7ZvZ73COSCjysCrvriIJUB7myz1KaUA-OKelQ&usqp=CAU',
    githubUrl: 'https://github.com/yourusername/project1',
    demoUrl: 'https://yourprojectdemo.com',
  ),
  Project(
    title: 'Animation Project',
    description: 'In this project, i have used some animations.',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSffwrDMMWaR8wE0R2wnT1xrw3jw5s20LttHF4ZbJi-fCSa3yne3-MaaePInp010VMws_s&usqp=CAU',
    githubUrl: 'https://github.com/yourusername/project1',
    demoUrl: 'https://yourprojectdemo.com',
  )
];
