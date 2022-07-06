import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'add_student_page.dart';
import 'list_student_page.dart';

class DbHomePage extends StatefulWidget {
  const DbHomePage({Key? key}) : super(key: key);

  @override
  State<DbHomePage> createState() => _DbHomePageState();
}

class _DbHomePageState extends State<DbHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Firebase Storage Demo'),
            ElevatedButton(onPressed: () => {
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => AddStudentPage(),
              ),
              )
            },
                child: Text('Add',
                style: TextStyle(
                  fontSize: 20
                ),),
              style: ElevatedButton.styleFrom(
                  primary: Colors.greenAccent ),
            )
          ],
        ),
      ),
      body: ListStudentPage() ,
    );
  }
}
