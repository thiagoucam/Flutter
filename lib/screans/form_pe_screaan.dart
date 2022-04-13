import 'package:flutter/material.dart';

class FormPetScreen extends StatefulWidget {
  const FormPetScreen({Key? key}) : super(key: key);

  @override
  State<FormPetScreen> createState() => _FormPetScreenState();
}

class _FormPetScreenState extends State<FormPetScreen> {
  String corPet = 'Selecione a Cor';
  String sexoPet = 'Macho';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Cadastro do Pet"),
          backgroundColor: Colors.redAccent,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Form(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(labelText: "Nome do Pet"),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(labelText: "Bio"),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(labelText: "Idade"),
                    ),
                    DropdownButtonFormField(
                      value: sexoPet,
                      onChanged: (String? sexoSelecionada) {
                        setState(() {
                          sexoPet = sexoSelecionada!;
                        });
                      },
                      items: <String>[
                        'Macho',
                        'Femea',
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                            value: value, child: Text(value));
                      }).toList(),

                    ),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(labelText: "Descrição"),
                    ),
                    DropdownButtonFormField(
                      value: corPet,
                      onChanged: (String? corSelecionada) {
                        setState(() {
                          corPet = corSelecionada!;
                        });
                      },
                      items: <String>[
                        'Selecione a Cor',
                        'Branco',
                        'Marrom',
                        'Preto',
                        'Amarelo',
                        'Malhado'
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                            value: value, child: Text(value));
                      }).toList(),

                    ),
                    Padding(
                        padding: EdgeInsets.only(top: 20, bottom: 20),
                        child: Container(
                          height: 40,
                          width: double.infinity,
                          child: RaisedButton(
                            onPressed: () {},
                            color: Colors.redAccent,
                            child: Text(
                              "Cadastrar",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ),
                        )),
                  ]),
            ),
          ),
        ));
  }
}
