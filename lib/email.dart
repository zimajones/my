import 'package:flutter/material.dart';
import 'package:my/main.dart';

void main() {
  runApp(const EmailPage());
}

//this is the page where i can send emails
class EmailPage extends StatefulWidget {
  const EmailPage({Key? key}) : super(key: key);

  @override
  _EmailPageState createState() => _EmailPageState();
}

final nameController = TextEditingController();
final subjectController = TextEditingController();
final emailController = TextEditingController();
final messageController = TextEditingController();

class _EmailPageState extends State<EmailPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Email Me'),
            ),
            body: Padding(
              padding: const EdgeInsets.fromLTRB(25, 40, 25, 0),
              child: Form(
                  child: Column(
                children: [
                  TextFormField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.account_circle),
                      hintText: 'Name',
                      labelText: 'Name',
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  TextFormField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.subject_rounded),
                      hintText: 'Subject',
                      labelText: 'Subject',
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  )
                ],
              )),
            )));
  }
}
