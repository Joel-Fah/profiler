import 'package:profiler/models/skills.dart';

class Offer {
  String title;
  String description;
  String location;
  String status;
  String employer;
  String minPrice;
  String maxPrice;
  DateTime expiryDate;
  List<Skill> skillsRequired;

  Offer({
    required this.title,
    required this.description,
    required this.location,
    required this.status,
    required this.employer,
    required this.maxPrice,
    required this.minPrice,
    required this.expiryDate,
    required this.skillsRequired,
  });
}

List<Offer> offers = [
  Offer(
    title: "Offre d’emploi pour assistant informatique",
    description:
    "In eu purus fermentum hendrerit iaculis. Ante mattis facilisis platea aliquam ut tincidunt. Purus in aliquet eu posuere nisi sit in vel. Pretium volutpat lacinia interdum porttitor pretium ut. Vulputate maecenas pretium euismod aliquam lacus. Et iaculis rutrum vel semper vitae accumsan potenti. Orci est sit eget urna rhoncus nibh vel venenatis.",
    location: "Yaounde, Cameroon",
    status: "Available",
    employer: "La boutique du coin",
    maxPrice: "60000",
    minPrice: "40000",
    expiryDate: DateTime.now().add(Duration(days: 5)),
    skillsRequired: skills.sublist(0, 7),
  ),
  Offer(
    title: "Développeur Mobile",
    description:
    "Nous recherchons un développeur mobile expérimenté pour rejoindre notre équipe. Le candidat idéal aura une solide expérience en développement d'applications mobiles pour iOS et Android, avec une bonne maîtrise des langages de programmation Swift, Kotlin et Java. Vous travaillerez en étroite collaboration avec notre équipe de conception pour créer des applications innovantes et conviviales. Expérience requise : 3 ans. ",
    location: "Douala, Cameroon",
    status: "Available",
    employer: "Tech Solutions",
    maxPrice: "150000",
    minPrice: "120000",
    expiryDate: DateTime.now().add(Duration(days: 15)),
    skillsRequired: skills.sublist(20, 26),
  ),
  Offer(
    title: "Designer Graphique",
    description:
    "Notre agence créative recherche un designer graphique talentueux pour rejoindre notre équipe. Le candidat devra avoir une excellente maîtrise des logiciels de conception graphique tels que Adobe Photoshop, Illustrator et InDesign. Une bonne compréhension des tendances actuelles en design et une capacité à travailler sous pression sont indispensables. Expérience requise : 2 ans.",
    location: "Bafoussam, Cameroon",
    status: "Closed",
    employer: "Creative Agency",
    maxPrice: "100000",
    minPrice: "70000",
    expiryDate: DateTime.now().subtract(Duration(days: 2)),
    skillsRequired: skills.sublist(14, 20),
  ),
  Offer(
    title: "Chef de Projet",
    description:
    "Nous recherchons un chef de projet compétent pour superviser nos projets technologiques. Le candidat idéal aura une expérience significative en gestion de projet et sera capable de coordonner les équipes, de gérer les délais et de veiller au respect du budget. Une certification PMP ou Prince2 est un atout. Expérience requise : 5 ans.",
    location: "Yaounde, Cameroon",
    status: "Available",
    employer: "Innovative Co.",
    maxPrice: "200000",
    minPrice: "150000",
    expiryDate: DateTime.now().add(Duration(days: 30)),
    skillsRequired: skills.sublist(7, 12),
  ),
  Offer(
    title: "Analyste de Données",
    description:
    "Nous cherchons un analyste de données talentueux pour extraire et interpréter des données complexes afin d'aider à la prise de décision stratégique. Le candidat doit être à l'aise avec les outils de data mining, SQL, et avoir des compétences en visualisation de données avec des logiciels comme Tableau ou Power BI. Expérience requise : 3 ans.",
    location: "Douala, Cameroon",
    status: "Available",
    employer: "Data Analytics Corp",
    maxPrice: "180000",
    minPrice: "140000",
    expiryDate: DateTime.now().add(Duration(days: 20)),
    skillsRequired: skills.sublist(26, 30),
  ),
  Offer(
    title: "Technicien Réseau",
    description:
    "Nous recherchons un technicien réseau qualifié pour installer, configurer et maintenir les réseaux informatiques de nos clients. Le candidat doit avoir une bonne connaissance des protocoles réseau, des systèmes d'exploitation et des équipements réseau. Une certification Cisco CCNA est fortement souhaitée. Expérience requise : 2 ans.",
    location: "Garoua, Cameroon",
    status: "Closed",
    employer: "Networx Inc.",
    maxPrice: "120000",
    minPrice: "90000",
    expiryDate: DateTime.now().subtract(Duration(days: 10)),
    skillsRequired: skills.sublist(22, 30),
  ),
  Offer(
    title: "Développeur Mobile",
    description:
    "Nous recherchons un développeur mobile expérimenté pour rejoindre notre équipe. Le candidat idéal aura une solide expérience en développement d'applications mobiles pour iOS et Android, avec une bonne maîtrise des langages de programmation Swift, Kotlin et Java. Vous travaillerez en étroite collaboration avec notre équipe de conception pour créer des applications innovantes et conviviales. Expérience requise : 3 ans. ",
    location: "Douala, Cameroon",
    status: "Available",
    employer: "Tech Solutions",
    maxPrice: "150000",
    minPrice: "120000",
    expiryDate: DateTime.now().add(Duration(days: 15)),
    skillsRequired: skills.sublist(10, 16),
  ),
  Offer(
    title: "Designer Graphique",
    description:
    "Notre agence créative recherche un designer graphique talentueux pour rejoindre notre équipe. Le candidat devra avoir une excellente maîtrise des logiciels de conception graphique tels que Adobe Photoshop, Illustrator et InDesign. Une bonne compréhension des tendances actuelles en design et une capacité à travailler sous pression sont indispensables. Expérience requise : 2 ans.",
    location: "Bafoussam, Cameroon",
    status: "Closed",
    employer: "Creative Agency",
    maxPrice: "100000",
    minPrice: "70000",
    expiryDate: DateTime.now().subtract(Duration(days: 2)),
    skillsRequired: skills.sublist(16, 22),
  ),
  Offer(
    title: "Chef de Projet",
    description:
    "Nous recherchons un chef de projet compétent pour superviser nos projets technologiques. Le candidat idéal aura une expérience significative en gestion de projet et sera capable de coordonner les équipes, de gérer les délais et de veiller au respect du budget. Une certification PMP ou Prince2 est un atout. Expérience requise : 5 ans.",
    location: "Yaounde, Cameroon",
    status: "Available",
    employer: "Innovative Co.",
    maxPrice: "200000",
    minPrice: "150000",
    expiryDate: DateTime.now().add(Duration(days: 30)),
    skillsRequired: skills.sublist(0, 7),
  ),
  Offer(
    title: "Analyste de Données",
    description:
    "Nous cherchons un analyste de données talentueux pour extraire et interpréter des données complexes afin d'aider à la prise de décision stratégique. Le candidat doit être à l'aise avec les outils de data mining, SQL, et avoir des compétences en visualisation de données avec des logiciels comme Tableau ou Power BI. Expérience requise : 3 ans.",
    location: "Douala, Cameroon",
    status: "Available",
    employer: "Data Analytics Corp",
    maxPrice: "180000",
    minPrice: "140000",
    expiryDate: DateTime.now().add(Duration(days: 20)),
    skillsRequired: skills.sublist(7, 14),
  ),
  Offer(
    title: "Technicien Réseau",
    description:
    "Nous recherchons un technicien réseau qualifié pour installer, configurer et maintenir les réseaux informatiques de nos clients. Le candidat doit avoir une bonne connaissance des protocoles réseau, des systèmes d'exploitation et des équipements réseau. Une certification Cisco CCNA est fortement souhaitée. Expérience requise : 2 ans.",
    location: "Garoua, Cameroon",
    status: "Closed",
    employer: "Networx Inc.",
    maxPrice: "120000",
    minPrice: "90000",
    expiryDate: DateTime.now().subtract(Duration(days: 10)),
    skillsRequired: skills.sublist(22, 30),
  ),
  Offer(
    title: "Ingénieur Logiciel",
    description:
    "Nous recrutons un ingénieur logiciel pour développer et maintenir nos applications internes. Le candidat doit avoir une expérience approfondie en programmation orientée objet, notamment en C++, Java et Python. Une connaissance des méthodologies Agile est un plus. Expérience requise : 4 ans.",
    location: "Yaounde, Cameroon",
    status: "Available",
    employer: "Software Solutions Ltd.",
    maxPrice: "250000",
    minPrice: "200000",
    expiryDate: DateTime.now().add(Duration(days: 25)),
    skillsRequired: skills.sublist(10, 16),
  ),
  Offer(
    title: "Administrateur Système",
    description:
    "Nous recherchons un administrateur système expérimenté pour gérer et optimiser nos infrastructures IT. Le candidat doit maîtriser les systèmes Windows et Linux, ainsi que les technologies de virtualisation comme VMware. Une certification MCSE ou RHCE est un atout. Expérience requise : 3 ans.",
    location: "Douala, Cameroon",
    status: "Available",
    employer: "IT Services Inc.",
    maxPrice: "180000",
    minPrice: "150000",
    expiryDate: DateTime.now().add(Duration(days: 20)),
    skillsRequired: skills.sublist(12, 30),
  ),
  Offer(
    title: "Responsable Marketing Digital",
    description:
    "Nous cherchons un responsable marketing digital pour développer et mettre en œuvre notre stratégie de marketing en ligne. Le candidat doit avoir une bonne maîtrise des outils de SEO, SEM, et des plateformes de publicité en ligne comme Google Ads et Facebook Ads. Expérience requise : 3 ans.",
    location: "Bafoussam, Cameroon",
    status: "Available",
    employer: "Digital Marketing Agency",
    maxPrice: "150000",
    minPrice: "120000",
    expiryDate: DateTime.now().add(Duration(days: 10)),
    skillsRequired: skills.sublist(0, 7),
  ),
  Offer(
    title: "Consultant en Cybersécurité",
    description:
    "Nous recrutons un consultant en cybersécurité pour évaluer et renforcer la sécurité de nos systèmes informatiques. Le candidat doit avoir une bonne connaissance des normes de sécurité, des techniques de test de pénétration et des outils de surveillance de la sécurité. Une certification CISSP est souhaitée. Expérience requise : 5 ans.",
    location: "Yaounde, Cameroon",
    status: "Available",
    employer: "CyberSecure Ltd.",
    maxPrice: "300000",
    minPrice: "250000",
    expiryDate: DateTime.now().add(Duration(days: 30)),
    skillsRequired: skills.sublist(1, 6),
  ),
  Offer(
    title: "Chef Comptable",
    description:
    "Nous recherchons un chef comptable pour gérer notre service comptable. Le candidat doit avoir une solide expérience en comptabilité générale, une bonne maîtrise des logiciels comptables et des connaissances approfondies en fiscalité. Une certification d'expert-comptable est un atout. Expérience requise : 5 ans.",
    location: "Douala, Cameroon",
    status: "Available",
    employer: "Finance Solutions",
    maxPrice: "200000",
    minPrice: "170000",
    expiryDate: DateTime.now().add(Duration(days: 15)),
    skillsRequired: skills.sublist(6, 12),
  ),
  Offer(
    title: "Assistant Administratif",
    description:
    "Nous cherchons un assistant administratif pour aider à la gestion quotidienne de notre bureau. Le candidat doit être organisé, avoir de bonnes compétences en communication et être capable de gérer plusieurs tâches simultanément. Une expérience préalable en administration est souhaitée. Expérience requise : 2 ans.",
    location: "Garoua, Cameroon",
    status: "Available",
    employer: "Admin Corp.",
    maxPrice: "80000",
    minPrice: "60000",
    expiryDate: DateTime.now().add(Duration(days: 10)),
    skillsRequired: skills.sublist(0, 6),
  ),
  Offer(
    title: "Chef d'Equipe de Production",
    description:
    "Nous recherchons un chef d'équipe de production pour superviser notre chaîne de production. Le candidat doit avoir une bonne expérience en gestion d'équipe, des compétences techniques en production et une capacité à résoudre rapidement les problèmes. Expérience requise : 4 ans.",
    location: "Yaounde, Cameroon",
    status: "Available",
    employer: "Manufacturing Inc.",
    maxPrice: "160000",
    minPrice: "130000",
    expiryDate: DateTime.now().add(Duration(days: 25)),
    skillsRequired: skills.sublist(6, 12),
  ),
  Offer(
    title: "Responsable RH",
    description:
    "Nous recrutons un responsable des ressources humaines pour gérer toutes les fonctions RH, y compris le recrutement, la formation, la gestion des performances et les relations avec les employés. Le candidat doit avoir une bonne connaissance des lois du travail et des meilleures pratiques RH. Expérience requise : 5 ans.",
    location: "Douala, Cameroon",
    status: "Available",
    employer: "HR Solutions",
    maxPrice: "220000",
    minPrice: "180000",
    expiryDate: DateTime.now().add(Duration(days: 30)),
    skillsRequired: skills.sublist(12, 18),
  ),
];