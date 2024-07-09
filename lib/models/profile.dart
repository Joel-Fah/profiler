import 'package:profiler/models/skills.dart';

class Profile {
  String name;
  String description;
  String occupation;
  String picture;
  int skillTestScore;
  double rating;
  List<Skill> skillSet;

  Profile(
      {required this.name,
      required this.description,
      required this.occupation,
      required this.picture,
      required this.rating,
      required this.skillSet,
      required this.skillTestScore,});
}

List<Profile> profiles = [
  Profile(
    name: "John Doe",
    description: "An eager student always looking to learn new things and expand his knowledge. "
        "He is dedicated to his studies and actively participates in academic activities.",
    occupation: "Student",
    picture: "https://randomuser.me/api/portraits/men/1.jpg",
    rating: 4.5,
    skillSet: skills.sublist(0, 7),
    skillTestScore: 60,
  ),
  Profile(
    name: "Jane Smith",
    description: "Experienced engineer with a passion for developing innovative solutions. "
        "She excels in project management and has a strong background in mechanical engineering.",
    occupation: "Engineer",
    picture: "https://randomuser.me/api/portraits/women/2.jpg",
    rating: 3.8,
    skillSet: skills.sublist(5, 15),
    skillTestScore: 85,
  ),
  Profile(
    name: "Robert Johnson",
    description: "Creative artist who brings imagination to life through various forms of art. "
        "He specializes in digital illustrations and has exhibited his work internationally.",
    occupation: "Artist",
    picture: "https://randomuser.me/api/portraits/men/3.jpg",
    rating: 4.9,
    skillSet: skills.sublist(10, 20),
    skillTestScore: 90,
  ),
  Profile(
    name: "Emily Davis",
    description: "Dedicated doctor committed to providing excellent patient care. "
        "She has extensive experience in emergency medicine and patient advocacy.",
    occupation: "Doctor",
    picture: "https://randomuser.me/api/portraits/women/4.jpg",
    rating: 2.7,
    skillSet: skills.sublist(3, 12),
    skillTestScore: 70,
  ),
  Profile(
    name: "Michael Brown",
    description: "Innovative designer with a keen eye for detail and aesthetics. "
        "His portfolio includes award-winning designs in both digital and print media.",
    occupation: "Designer",
    picture: "https://randomuser.me/api/portraits/men/5.jpg",
    rating: 4.1,
    skillSet: skills.sublist(0, 10),
    skillTestScore: 50,
  ),
  Profile(
    name: "Laura Wilson",
    description: "Passionate teacher who inspires and motivates students to achieve their best. "
        "She has a proven track record of improving student performance in science subjects.",
    occupation: "Teacher",
    picture: "https://randomuser.me/api/portraits/women/6.jpg",
    rating: 3.2,
    skillSet: skills.sublist(7, 25),
    skillTestScore: 40,
  ),
  Profile(
    name: "David Martinez",
    description: "Skilled lawyer with a track record of successfully representing clients. "
        "He specializes in corporate law and has a reputation for his analytical skills.",
    occupation: "Lawyer",
    picture: "https://randomuser.me/api/portraits/men/7.jpg",
    rating: 1.9,
    skillSet: skills.sublist(2, 8),
    skillTestScore: 30,
  ),
  Profile(
    name: "Emma Garcia",
    description: "Dedicated scientist conducting groundbreaking research in her field. "
        "Her work in biotechnology has been published in numerous scientific journals.",
    occupation: "Scientist",
    picture: "https://randomuser.me/api/portraits/women/8.jpg",
    rating: 4.6,
    skillSet: skills.sublist(0, 15),
    skillTestScore: 95,
  ),
  Profile(
    name: "Daniel Hernandez",
    description: "Talented architect with a portfolio of impressive and innovative designs. "
        "He focuses on sustainable architecture and has won multiple design awards.",
    occupation: "Architect",
    picture: "https://randomuser.me/api/portraits/men/9.jpg",
    rating: 3.5,
    skillSet: skills.sublist(10, 22),
    skillTestScore: 55,
  ),
  Profile(
    name: "Sophia Lopez",
    description: "Creative writer with a knack for crafting engaging and compelling stories. "
        "Her works have been featured in several literary magazines and anthologies.",
    occupation: "Writer",
    picture: "https://randomuser.me/api/portraits/women/10.jpg",
    rating: 4.8,
    skillSet: skills.sublist(5, 14),
    skillTestScore: 80,
  ),
];


