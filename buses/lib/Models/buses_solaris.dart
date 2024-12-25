class solaris {
  final int id;
  final String name;
  final String description;
  final String image;
  final String motor;
  final String ejes;
  final String carroceria;
  final String pasajeros;
  final String creador;
  final String enlace;

  const solaris(
      {required this.id,
      required this.name,
      required this.description,
      required this.image,
      required this.motor,
      required this.ejes,
      required this.carroceria,
      required this.pasajeros,
      required this.creador,
      required this.enlace});
  factory solaris.fromJson(Map<String, dynamic> json) => solaris(
      id: json["id"],
      name: json['name'],
      description: json['description'],
      image: json['image'],
      motor: json['motor'],
      ejes: json['ejes'],
      carroceria: json['carroceria'],
      pasajeros: json['pasajeros'],
      creador: json['creador'],
      enlace: json['enlace']);
  Map<String, dynamic> toJson() => {
        "id": id,
        'name': name,
        'description': description,
        'image': image,
        'motor': motor,
        'ejes': ejes,
        'carroceria': carroceria,
        'pasajeros': pasajeros,
        'creador': creador,
        'enlace': enlace,
      };
  solaris copy() => solaris(
      id: id,
      name: name,
      description: description,
      image: image,
      motor: motor,
      ejes: ejes,
      carroceria: carroceria,
      pasajeros: pasajeros,
      creador: creador,
      enlace: enlace);
}
