class Skill {
  final int id;
  final String name;

  Skill({required this.id, required this.name});

  @override
  String toString() {
    return 'Skill(id: $id, name: $name)';
  }
}

List<Skill> skills = [
  // random tech and soft skills, not Programming langs
  Skill(id: 1, name: 'Critical thinking'),
  Skill(id: 2, name: 'Problem-solving'),
  Skill(id: 3, name: 'Teamwork'),
  Skill(id: 4, name: 'Communication'),
  Skill(id: 5, name: 'Creativity'),
  Skill(id: 6, name: 'Adaptability'),
  Skill(id: 7, name: 'Time management'),
  Skill(id: 8, name: 'Leadership'),
  Skill(id: 9, name: 'Negotiation'),
  Skill(id: 10, name: 'Conflict resolution'),
  // tech skills
  Skill(id: 11, name: 'Python'),
  Skill(id: 12, name: 'JavaScript'),
  Skill(id: 13, name: 'Java'),
  Skill(id: 14, name: 'C#'),
  Skill(id: 15, name: 'PHP'),
  Skill(id: 16, name: 'C++'),
  Skill(id: 17, name: 'TypeScript'),
  Skill(id: 18, name: 'Ruby'),
  // tech skills
  Skill(id: 19, name: 'Databases'),
  Skill(id: 20, name: 'Web development'),
  Skill(id: 21, name: 'Mobile development'),
  Skill(id: 22, name: 'NoSQL'),
  Skill(id: 23, name: 'SQL'),
  Skill(id: 24, name: 'APIs'),
  Skill(id: 25, name: 'Cloud computing'),
  Skill(id: 26, name: 'DevOps'),
  Skill(id: 27, name: 'Cybersecurity'),
  Skill(id: 28, name: 'Machine learning'),
  Skill(id: 29, name: 'Data science'),
  Skill(id: 30, name: 'Artificial intelligence'),
];