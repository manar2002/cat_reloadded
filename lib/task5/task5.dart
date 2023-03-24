import 'package:flutter/material.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({super.key});

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {

  String? grade;
  bool cpp = false;
  bool python = false;
  bool dart = false;
  bool java = false;
  String choice1 = "";
  String choice2 = "";
  String choice3 = "";
  String choice4 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff009788),
        title: const Text(
            "Task",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
            ),
          ),
        centerTitle: true,
        ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "What's your grade ?",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              children: [
                Column(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width/2,
                      child: RadioListTile(
                        activeColor: const Color(0xff009788),
                        selected: "First year" == grade ? true : false,
                        title: const Text(
                          "First year",
                          style: TextStyle(fontSize: 20),
                        ),
                        controlAffinity: ListTileControlAffinity.leading,
                        value: "First year",
                        groupValue: grade,
                        onChanged: (val) {
                          var snackbar = const SnackBar(
                            content: Text("You chose First year"),
                            duration: Duration(seconds: 3),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackbar);
                          setState(() {
                            grade = val;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width/2,
                      child: RadioListTile(
                        activeColor: const Color(0xff009788),
                        selected: "Third year" == grade ? true : false,
                        title: const Text(
                          "Third year",
                          style: TextStyle(fontSize: 20),
                        ),
                        controlAffinity: ListTileControlAffinity.leading,
                        value: "Third year",
                        groupValue: grade,
                        onChanged: (val) {
                          var snackbar = const SnackBar(
                            content: Text("You chose Third year"),
                            duration: Duration(seconds: 3),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackbar);
                          setState(() {
                            grade = val;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width/2,
                      child: RadioListTile(
                        activeColor: const Color(0xff009788),
                        selected: "Second year" == grade ? true : false,
                        title: const Text(
                          "Second year",
                          style: TextStyle(fontSize: 20),
                        ),
                        controlAffinity: ListTileControlAffinity.leading,
                        value: "Second year",
                        groupValue: grade,
                        onChanged: (val) {
                          var snackbar = const SnackBar(
                            content: Text("You chose Second year"),
                            duration: Duration(seconds: 3),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackbar);
                          setState(() {
                            grade = val;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width/2,
                      child: RadioListTile(
                        activeColor: const Color(0xff009788),
                        selected: "Fourth year" == grade ? true : false,
                        title: const Text(
                          "Fourth year",
                          style: TextStyle(fontSize: 20),
                        ),
                        controlAffinity: ListTileControlAffinity.leading,
                        value: "Fourth year",
                        groupValue: grade,
                        onChanged: (val) {
                          var snackbar = const SnackBar(
                            content: Text("You chose Fourth year"),
                            duration: Duration(seconds: 3),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackbar);
                          setState(() {
                            grade = val;
                          });
                        },
                      ),
                    ),
                  ],
                )
              ],
            ),
            const Divider(
              color: Color(0xff009788),
              indent: 20,
              endIndent: 20,
              thickness: 3,
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "Which programming language do you use?",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width/2,
                          child: CheckboxListTile(
                            activeColor: const Color(0xff009788),
                            selected: cpp == true ? true : false,
                            title: const Text(
                              "C++",
                              style: TextStyle(fontSize: 20),
                            ),
                            controlAffinity: ListTileControlAffinity.leading,
                            value: cpp,
                            onChanged: (val) {
                              setState(() {
                                cpp = val!;
                                choice1 = "C++";
                              });
                            },
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width/2,
                          child: CheckboxListTile(
                            activeColor: const Color(0xff009788),
                            selected: dart == true ? true : false,
                            title: const Text(
                              "Dart",
                              style: TextStyle(fontSize: 20),
                            ),
                            controlAffinity: ListTileControlAffinity.leading,
                            value: dart,
                            onChanged: (val) {
                              setState(() {
                                dart = val!;
                                choice2 = "Dart";
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width/2,
                          child: CheckboxListTile(
                            activeColor: const Color(0xff009788),
                            selected: python == true ? true : false,
                            title: const Text(
                              "Python",
                              style: TextStyle(fontSize: 20),
                            ),
                            controlAffinity: ListTileControlAffinity.leading,
                            value: python,
                            onChanged: (val) {
                              setState(() {
                                python = val!;
                                choice4 = "Python";
                              });
                            },
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width/2,
                          child: CheckboxListTile(
                            activeColor: const Color(0xff009788),
                            selected: java == true ? true : false,
                            title: const Text(
                              "Java",
                              style: TextStyle(fontSize: 20),
                            ),
                            controlAffinity: ListTileControlAffinity.leading,
                            value: java,
                            onChanged: (val) {
                              setState(() {
                                java = val!;
                                choice3 = "Java";
                              });
                            },
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Container(
                  margin: const EdgeInsets.all(20),
                  padding: const EdgeInsets.all(12),
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  color: const Color(0xff009788),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "This shows what you choose: ",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      Text(
                        choice1,
                        style: const TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      Text(
                        choice2,
                        style: const TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      Text(
                        choice3,
                        style: const TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      Text(
                        choice4,
                        style: const TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
