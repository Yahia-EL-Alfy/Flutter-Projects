import 'package:flutter/material.dart';

class BmiResScreen extends StatelessWidget {

   final int result;
   final int age ;
   final bool isMale;

  const BmiResScreen({super.key, required this.result, required this.age, required this.isMale});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[700],
      appBar: AppBar(

        title: const Text("BMI Results"),
        backgroundColor: Colors.blueGrey[800],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.blueGrey[900],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Text(
                  'Results : $result',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                  ),
                ),
                Text(
                  'Age : $age',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Gender : ' ,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                      ),
                    ),
                    Text(
                      isMale ? 'Male' : 'Female' ,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                      ),
                    ),

                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
