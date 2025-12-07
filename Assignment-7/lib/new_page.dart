import 'package:flutter/material.dart';

class NewPage extends StatefulWidget {
  const NewPage({super.key});

  @override
  State<StatefulWidget> createState() => _NewPageState();
}

class _NewPageState extends State {
  TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Page"),
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: SizedBox(
          height: 300,
          width: 300,
          child: Card(
            color: const Color.fromARGB(255, 188, 179, 187),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Text("Write Something..."),
                  TextFormField(
                    controller: textController,
                    keyboardType: TextInputType.text,
                    // obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter input",
                      labelText: "Write Something...",
                      prefixIcon: Icon(Icons.edit),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
