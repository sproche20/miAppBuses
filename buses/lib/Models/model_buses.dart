class Buses {
  final int id;
  final String name;
  final String image;
  final String description;
  final String caracteristicas;
  final String motor;
  final String torsion;
  final String carga;
  final String pasajeros;
  final String transmision;
  final String creador;
  final String enlace1;
  final String enlace2;
  const Buses({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
    required this.caracteristicas,
    required this.motor,
    required this.torsion,
    required this.carga,
    required this.pasajeros,
    required this.transmision,
    required this.creador,
    required this.enlace1,
    required this.enlace2,
  });
  factory Buses.fromJson(Map<String, dynamic> json) => Buses(
        id: json["id"],
        name: json["name"],
        image: json["image"],
        description: json["description"],
        caracteristicas: json["caracteristicas"],
        motor: 'motor',
        torsion: 'torsion',
        carga: 'carga',
        pasajeros: 'pasajeros',
        transmision: 'transmision',
        creador: json["creador"],
        enlace1: json["enlace1"],
        enlace2: json["enlace2"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "image": image,
        "description": description,
        "caracteristicas": caracteristicas,
        "motor": motor,
        "torsion": torsion,
        "carga": carga,
        "pasajeros": pasajeros,
        "transmision": transmision,
        "creador": creador,
        "enlace1": enlace1,
        "enlace2": enlace2,
      };
  Buses copy() => Buses(
        id: id,
        name: name,
        image: image,
        description: description,
        caracteristicas: caracteristicas,
        motor: motor,
        torsion: torsion,
        carga: carga,
        pasajeros: torsion,
        transmision: transmision,
        creador: creador,
        enlace1: enlace1,
        enlace2: enlace2,
      );
}
