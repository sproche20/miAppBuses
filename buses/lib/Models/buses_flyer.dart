class flyer {
  final int id;
  final String name;
  final String image;
  final String description;
  final String caracteristicas;
  final String motor;
  final String ejes;
  final String pasajeros;
  final String transmision;
  final String enlace1;
  final String creador;
  const flyer(
      {required this.id,
      required this.name,
      required this.image,
      required this.description,
      required this.caracteristicas,
      required this.motor,
      required this.ejes,
      required this.pasajeros,
      required this.transmision,
      required this.enlace1,
      required this.creador});
  factory flyer.fromJson(Map<String, dynamic> json) => flyer(
      id: json["id"],
      name: json["name"],
      image: json["image"],
      description: json["description"],
      caracteristicas: json["description"],
      motor: json["motor"],
      ejes: json["ejes"],
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
        "ejes": ejes,
        "pasajeros": pasajeros,
        "transmision": transmision,
        "enlace1": enlace1,
        "creador": creador,
      };
  flyer copy() => flyer(
      id: id,
      name: name,
      image: image,
      description: description,
      caracteristicas: caracteristicas,
      motor: motor,
      ejes: ejes,
      pasajeros: pasajeros,
      transmision: transmision,
      enlace1: enlace1,
      creador: creador);
}
