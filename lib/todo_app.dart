import 'package:flutter/material.dart';
import 'package:test_1/archived_tasks.dart';
import 'package:test_1/done_tasks.dart';
import 'package:test_1/new_tasks.dart';

// ignore: camel_case_types
class todoHomeScreen extends StatefulWidget {
  const todoHomeScreen({Key? key}) : super(key: key);

  @override
  State<todoHomeScreen> createState() => _todoHomeScreenState();
}

// ignore: camel_case_types
class _todoHomeScreenState extends State<todoHomeScreen> {

  int counter = 0;
  List<Widget> screens =
  [
    NewTasks(),
    DoneTasks(),
    ArchivedTasks(),
  ];
  List<String> title =
      [
        "Tasks",
        'Done Tasks',
        'Archived Tasks',
      ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[50],
        elevation: 0,
        title:  Center(
          child: Text(
              title[counter],
            style:  const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w200,

              fontSize: 35,
            ),
          ),
        )
      ),
      body: screens[counter],
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlue,
          onPressed: (){},
        child: const Icon(
          Icons.add,

        ),

      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.lightBlue,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(90) , topRight: Radius.circular(90)  )
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.transparent,
          selectedItemColor: Colors.white,
          elevation: 0,
          currentIndex: counter,
          onTap: (index){
            setState(() {
              counter=index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              backgroundColor: Colors.white,
                icon: Icon(Icons.menu_rounded,
                ),
              label: 'New Task'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.check_circle_outline_rounded),
                label: 'Done'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.archive_outlined),
                label: 'Archived'
            ),


          ],
        ),
      ),

    );
  }
}
