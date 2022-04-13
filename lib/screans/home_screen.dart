
import 'package:flutter/material.dart';
import 'package:petshop/models/pet_model.dart';
import 'package:petshop/screans/form_pe_screaan.dart';
import 'package:petshop/screans/pet/perfil_pet.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Adoção"),
        backgroundColor: Color.fromRGBO(1, 104, 94, 1.0),
      ),
      backgroundColor: Colors.teal,
      body: ListView.builder(
        itemCount: pets.length,
        itemBuilder: (context, index) {
          return _petCard(context, index);
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (_) => FormPetScreen()
            ),
          );
        },
        label: Text("Cadastrar"),
        icon: Icon(Icons.pets),
        backgroundColor: Colors.redAccent,
      ),
    );
  }

  Widget _petCard(BuildContext context, int index) {
    return GestureDetector(
      onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
                builder: (_) => PerfilPet(pet: pets[index])
            ),
          );
          },
      child: Padding(
        padding: EdgeInsets.only(bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Hero(
              tag: pets[index].id,
              child: Container(
                width: double.infinity,
                height: 220,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                        Radius.circular(30)
                    ),
                    image: DecorationImage(
                        image: AssetImage(pets[index].imageUrl),
                        fit: BoxFit.cover
                    )
                ),

              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(12, 12, 10, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    pets[index].nome,
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(12, 12, 20, 0),
              child: Text(
                pets[index].descricao,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),


            )
          ],
        ),
      ),
    );
  }
}

