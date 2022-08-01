class Flight {
  final int? id;
  final String? name;
  final String? country;
  final String? logo;
  final String? slogan;
  final String? headQuaters;
  final String? website;
  final String? established;

  Flight({
    this.id,
    this.name,
    this.country,
    this.logo,
    this.slogan,
    this.headQuaters,
    this.website,
    this.established,
  });

  Flight copyWith({
    int? id,
    String? name,
    String? country,
    String? logo,
    String? slogan,
    String? headQuaters,
    String? website,
    String? established,
  }) {
    return Flight(
      id: id ?? this.id,
      name: name ?? this.name,
      country: country ?? this.country,
      logo: logo ?? this.logo,
      slogan: slogan ?? this.slogan,
      headQuaters: headQuaters ?? this.headQuaters,
      website: website ?? this.website,
      established: established ?? this.established,
    );
  }

  Flight.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int?,
        name = json['name'] as String?,
        country = json['country'] as String?,
        logo = json['logo'] as String?,
        slogan = json['slogan'] as String?,
        headQuaters = json['head_quaters'] as String?,
        website = json['website'] as String?,
        established = json['established'] as String?;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'country': country,
        'logo': logo,
        'slogan': slogan,
        'head_quaters': headQuaters,
        'website': website,
        'established': established
      };
}
