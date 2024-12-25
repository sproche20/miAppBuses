class Man {
  final int id;
  final String name;
  final String image;
  final String description;
  final String caracteristicas;
  final String motor;
  final String torsion;
  final String pasajeros;
  final String transmision;
  final String enlace1;
  final String creador;

  const Man(
      {required this.id,
      required this.name,
      required this.image,
      required this.description,
      required this.caracteristicas,
      required this.motor,
      required this.torsion,
      required this.pasajeros,
      required this.transmision,
      required this.enlace1,
      required this.creador});
  factory Man.fromJson(Map<String, dynamic> json) => Man(
      id: json["id"],
      name: json["name"],
      image: json["image"],
      description: json["description"],
      caracteristicas: json["description"],
      motor: json["motor"],
      torsion: json["torsion"],
      pasajeros: json["pasajeros"],
      transmision: json["transmision"],
      enlace1: json["enlace1"],
      creador: json["creador"]);
  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "image": image,
        "description": description,
        "caracteristicas": caracteristicas,
        "motor": motor,
        "torsion": torsion,
        "pasajeros": pasajeros,
        "transmision": transmision,
        "enlace1": enlace1,
        "creador": creador,
      };
  Man copy() => Man(
      id: id,
      name: name,
      image: image,
      description: description,
      caracteristicas: caracteristicas,
      motor: motor,
      torsion: torsion,
      pasajeros: pasajeros,
      transmision: transmision,
      enlace1: enlace1,
      creador: creador);
}
