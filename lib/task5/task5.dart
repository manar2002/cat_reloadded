import 'package:flutter/material.dart';
class TaskPage extends StatefulWidget {
  const TaskPage({Key? key}) : super(key: key);

  @override
  TaskPageState createState() => TaskPageState();
}

class TaskPageState extends State<TaskPage> {

  String grade = "Third year" ;
  bool programming_language = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: const Text("Task",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
            children: [
              const Text("What's your grade?",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),),
              RadioListTile(
                activeColor: Colors.green,
                  title: const Text("First year"),
                  value: "First year", groupValue: grade, onChanged: (val){
                setState(() {
                  grade = val!;
                });
              }),
              RadioListTile(
                  activeColor: Colors.green,
                  title: const Text("Second year"),
                  value: "Second year", groupValue: grade, onChanged: (val){
                setState(() {
                  grade = val!;
                });
              }),
              RadioListTile(
                  activeColor: Colors.green,
                  title: const Text("Third year"),
                  value: "Third year", groupValue: grade, onChanged: (val){
                setState(() {
                  grade = val!;
                });
              }),
          /*ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green)),
              onPressed: () {
                var snackdemo = SnackBar(
                  content: Text("You chose $grade"),
                  backgroundColor: Colors.green,
                  duration: const Duration(seconds: 3),
                  elevation: 10,
                  behavior: SnackBarBehavior.floating,
                  margin: const EdgeInsets.all(5),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackdemo);
              },
              child:  Text("data"),
            ),
              const Text("Which programming language do you use?",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      CheckboxListTile(
                      activeColor: Colors.green,
                        value: programming_language,
                        onChanged: (val){
                      setState(() {
                        programming_language = val!;
                      });
                    },
                      title: const Text("C++"),
                    ),
                  CheckboxListTile(
                    activeColor: Colors.green,
                    value: programming_language,
                    onChanged: (val){
                      setState(() {
                        programming_language = val!;
                      });
                    },
                    title: const Text("Dart"),
                  ),
                  ]),
                  Row(
                    children: [
                      CheckboxListTile(
                      activeColor: Colors.green,
                      value: programming_language,
                      onChanged: (val){
                        setState(() {
                          programming_language = val!;
                        });
                      },
                      title: const Text("Python"),
                    ),
                  CheckboxListTile(
                    activeColor: Colors.green,
                    value: programming_language,
                    onChanged: (val){
                      setState(() {
                        programming_language = val!;
                      });
                    },
                    title: const Text("Java"),
                  ),
                      ]),
                ],
              ),*/
            ],
          ),
      ),
    );
  }
}
