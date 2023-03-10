import 'dart:math';

import 'package:flutter/material.dart';
import 'package:test_1/bmi%20results.dart';

class BmiCalc extends StatefulWidget {
  const BmiCalc({Key? key}) : super(key: key);

  @override
  State<BmiCalc> createState() => _BmiCalcState();
}

class _BmiCalcState extends State<BmiCalc> {
  bool isMale=true;
  double height = 120;
  int weight = 70;
  int age = 25;
  int result=0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.blueGrey[700],
      appBar: AppBar(
        title: const Center(child: Text("BMI Calculator")),
        backgroundColor: Colors.blueGrey[800],

      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(

                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: isMale ? Colors.lightBlueAccent[400] : Colors.blueGrey[900],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.male_outlined,
                              size: 70.0,
                              color: Colors.white,
                            ),
                             Text(
                              'MALE',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w200,
                                color: Colors.white
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale=false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: isMale ? Colors.blueGrey[900] :Colors.pinkAccent[100] ,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.female_outlined,
                              size: 70.0,
                              color: Colors.white,
                            ),
                             Text(
                              'FEMALE',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w200,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),

                ],

              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.blueGrey[900],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Height',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w200,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children:[
                        Text(
                          '${height.round()}',
                          style: const TextStyle(
                            fontSize: 45.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const Text(
                          'CM',
                          style: TextStyle(
                            fontSize: 13.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,

                          ),
                        ),
                      ],
                    ),
                    Slider(
                        value: height,
                        min: 80,
                        max: 220,
                        activeColor: Colors.redAccent,
                        onChanged :(value){
                          setState(() {
                            height = value;
                          });
                        }
                    ),

                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.blueGrey[900],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:[
                          const Text(
                            'WEIGHT',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w200,
                              color: Colors.white,
                            ),

                          ),
                           Text(
                            '${weight.round()}',
                            style: const TextStyle(
                              fontSize: 45.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(

                                onPressed: (){
                                  setState(() {
                                    weight--;
                                  });
                                },
                                mini: true,
                                backgroundColor: Colors.redAccent,
                                child: const Icon(Icons.remove_rounded),
                              ),
                              FloatingActionButton(

                                onPressed: (){
                                  setState(() {
                                    weight++;
                                  });
                                },
                                mini: true,
                                backgroundColor: Colors.redAccent,
                                child: const Icon(Icons.add_rounded),
                              ),
                            ],
                          )

                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),

                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.blueGrey[900],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:[
                          const Text(
                            'AGE',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w200,
                              color: Colors.white,
                            ),

                          ),
                           Text(
                            '${age.round()}',
                            style: const TextStyle(
                              fontSize: 45.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(

                                onPressed: (){
                                  setState(() {
                                    age--;
                                  });
                                },
                                mini: true,
                                backgroundColor: Colors.redAccent,
                                child: const Icon(Icons.remove_rounded),
                              ),
                              FloatingActionButton(

                                onPressed: (){
                                  setState(() {
                                    age++;
                                  });
                                },
                                mini: true,
                                backgroundColor: Colors.redAccent,
                                child: const Icon(Icons.add_rounded),
                              ),
                            ],
                          )

                        ],
                      ),
                    ),
                  ),


                ],
              ),
            ),
          ),
          Container(
            color: Colors.redAccent,
            width: double.infinity,
            height: 50.0,
            child: MaterialButton(
                onPressed:() {

                  double results = weight / pow(height/100,2);
                  print(results.round());
                  result = results.round();

                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => BmiResScreen(result: result,age : age ,isMale: isMale, )),);
                },
              child: const Text(
                  'CALCULATE',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),

            ),
          ),

        ],
      ),
    );
  }
}
