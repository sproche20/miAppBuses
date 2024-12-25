class liaz {
  final int id;
  final String name;
  final String image;
  final String description;
  final String carroceria;
  final String radioGiro;
  final String chasis;
  final String engranaje;
  final String pasajeros;
  final String creador;
  final String enlace;

  const liaz(
      {required this.id,
      required this.name,
      required this.image,
      required this.description,
      required this.carroceria,
      required this.radioGiro,
      required this.chasis,
      required this.engranaje,
      required this.pasajeros,
      required this.creador,
      required this.enlace});
  factory liaz.fromJson(Map<String, dynamic> json) => liaz(
      id: json["id"],
      name: json["name"],
      image: json["image"],
      description: json["description"],
      carroceria: json["carroceria"],
      radioGiro: json["radioGiro"],
      chasis: json["chasis"],
      engranaje: json["engranaje"],
      pasajeros: json["pasajeros"],
      creador: json["creador"],
      enlace: json["enlace"]);
  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "image": image,
        "description": description,
        "carroceria": carroceria,
        "radioGiro": radioGiro,
        "chasis": chasis,
        "engranaje": engranaje,
        "pasajeros": pasajeros,
        "creador": creador,
        "enlace": enlace,
      };
  liaz copy() => liaz(
      id: id,
      name: name,
      image: image,
      description: description,
      carroceria: carroceria,
      radioGiro: radioGiro,
      chasis: chasis,
      engranaje: engranaje,
      pasajeros: pasajeros,
      creador: creador,
      enlace: enlace);
}
