import 'package:flutter/material.dart';

class Reservation extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Réservation - alpha',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Entrez le numéro de la place à réserver',
              ),
              onSubmitted: (String value) async{
                await showDialog<void>(
                  context: context,
                  builder: (BuildContext context){
                    return AlertDialog(
                      title: const Text('Réservation en cours'),
                      content: Text(
                        'Vous souhaitez réserver la place n° $value'
                      ),
                    actions: <Widget>[
                      TextButton(onPressed: (){
                        Navigator.pop(context);
                      },
                        child: const Text('OK'),
                      )
                    ]
                    );
                  }
                );
              },
            ),
          ]
        )
      )
    );
  }
}