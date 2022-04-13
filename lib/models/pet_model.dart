class Pet {
  String nome;
  String imageUrl;
  String descricao;
  int idade;
  String sexo;
  String cor;
  String bio;
  String id;

  Pet({
    required this.nome,
    required this.imageUrl,
    required this.descricao,
    required this.idade,
    required this.sexo,
    required this.cor,
    required this.bio,
    required this.id
  });
}
  var pets = [
    Pet(
        nome: "Tobias",
        imageUrl: "assets/images/toto.jpg",
        descricao: "Um cachorro esperto",
        idade: 2,
        sexo: "macho",
        cor: "preto",
        bio: "sou um totó esperto sou um totó esperto sou um totó esperto sou um totó espertosou um totó espertosou um totó espertosou um totó espertosou um totó espertosou um totó esperto",
        id: "1"),
    Pet(
        nome: "belinha",
        imageUrl: "assets/images/belinha.jpg",
        descricao: "Um cachorro ",
        idade: 6,
        sexo: "Femea",
        cor: "Branco",
        bio: "sou um totó esperto",
        id: "2"),
    Pet(
        nome: "mala",
        imageUrl: "assets/images/belinha.jpg",
        descricao: "Um cachorro ",
        idade: 6,
        sexo: "Femea",
        cor: "Branco",
        bio: "sou um totó esperto",
        id: "3"),
  ];

