import 'package:flutter/material.dart';
import 'package:my/main.dart';
import 'package:http/http.dart';

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

//service to be able to send emails
Future sendEmail() async {
  final url = Uri.parse("https://api.emailjs.com/api/v1.0/email/send");
  final response = await;
}

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
              controller: subjectController,
              decoration: const InputDecoration(
                icon: Icon(Icons.subject_rounded),
                hintText: 'Subject',
                labelText: 'Subject',
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            TextFormField(
              controller: emailController,
              decoration: const InputDecoration(
                icon: Icon(Icons.email),
                hintText: 'Email',
                labelText: 'Email',
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            TextFormField(
              controller: messageController,
              decoration: const InputDecoration(
                icon: Icon(Icons.message),
                hintText: 'Message',
                labelText: 'Message',
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Send'),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Back')),
              ],
            )
          ],
        )),
      ),
    ));
  }
}
