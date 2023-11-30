import 'package:flutter/material.dart';
import 'consent.dart';

class EmailChecker extends StatelessWidget {
  EmailChecker({super.key});

  TextEditingController emailController = TextEditingController();

   void doNothing() {
  // Esta función no hace nada.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        //title: const Text("PREGUNTAS PERSONALES"),
        backgroundColor: Color.fromARGB(255, 203, 166, 240),
        elevation: 0,
        iconTheme: const IconThemeData(
            color: Colors.white, // Change the icon color here
        ),
      ),
      body: Center(
        child: Column( 
          mainAxisAlignment: MainAxisAlignment.center, 
          crossAxisAlignment: CrossAxisAlignment.center, 
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(50),
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(labelText: 'ejemplo@gmail.com',)  
              ),
            ),
            const SizedBox(height: 30,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 60, 56, 71), 
                elevation: 0,
                padding: EdgeInsets.only(left: 40, right: 40, top: 15, bottom: 15),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Consent()),
                );  
                print(emailController.text);
              },
              child: const Text('Validar', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400)),
            ),
          ]
        )
      ),
    );
  }
}