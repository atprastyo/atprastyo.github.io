class User {
  const User({
    this.name = 'Agus Tri Prastyo',
    this.role = 'Software Engineer - Mobile',
    this.residence = 'Tembelang',
    this.city = 'Jombang',
    this.skills = const <String>[],
    this.programming = const <String>[],
    this.knowledge = const <String>[],
  });

  factory User.myProfile() => const User(
        name: 'Agus Tri Prastyo',
        role: 'Software Engineer - Mobile',
        residence: 'Tembelang',
        city: 'Jombang',
      );

  final String name;
  final String role;
  final String residence;
  final String city;
  final List<String> skills;
  final List<String> programming;
  final List<String> knowledge;
}
