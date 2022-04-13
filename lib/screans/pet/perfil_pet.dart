import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../models/pet_model.dart';

class PerfilPet extends StatelessWidget {
  //const PerfilPet({Key? key}) : super(key: key);
  final Pet? pet;
  PerfilPet({this.pet});
  Widget _cartaoInoPet(String label,String informacao){
    return Container(
      margin: EdgeInsets.all(10),
      width: 100,
      decoration: BoxDecoration(
        color: Color(0xFFE7DAE4),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            label,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color:  Colors.red
            ),
          ),
          SizedBox(height: 8,),
          Text(
            informacao,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color:  Colors.black
            ),
          ),
        ],

      ),
    );

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Hero(
                  tag: pet!.id,
                  child: Container(
                    width: double.infinity,
                    height: 350,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(pet!.imageUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 40, left: 10),
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(Icons.arrow_back_ios),
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    pet!.nome,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    pet!.descricao,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  _cartaoInoPet('Idade', pet!.idade.toString()),
                  _cartaoInoPet('cor', pet!.cor),
                  _cartaoInoPet('sexo', pet!.sexo),
                  _cartaoInoPet('id', pet!.id)
                ],
              ),
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 25),
              child: Text(
                pet!.bio,
                style: TextStyle(
                  fontSize: 16,
                  height: 1.5
                ),
                maxLines: 3,
              ),
            ),
          ],
        ),
      ),
    );
  }


}
