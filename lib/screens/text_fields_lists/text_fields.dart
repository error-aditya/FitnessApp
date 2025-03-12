import 'package:flutter/material.dart';

class TextFieldsExample extends StatefulWidget {
  const TextFieldsExample({super.key});

  @override
  State<TextFieldsExample> createState() => _TextFieldsExampleState();
}

class _TextFieldsExampleState extends State<TextFieldsExample> {
  bool obss = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Text Fields Example')),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 250,
                  child: TextField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      labelStyle: TextStyle(color: Colors.white),
                      labelText: 'Label',
                      fillColor: const Color.fromARGB(156, 234, 217, 217),
                      filled: true,
                      border: UnderlineInputBorder(
                        // borderSide: BorderSide(color: const Color.fromARGB(255, 242, 8, 8)),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 250,
                  child: TextField(
                    style: TextStyle(color: Colors.black),
                    enabled: true,
                    decoration: InputDecoration(
                      labelStyle: TextStyle(color: Colors.white),
                      suffixIcon: Icon(Icons.info),
                      prefixIcon: Icon(Icons.favorite),
                      prefixIconColor: Colors.white,
                      labelText: 'Label',
                      // prefixText: 'Label',
                      fillColor: const Color.fromARGB(156, 234, 217, 217),
                      filled: true,
                      border: UnderlineInputBorder(
                        // borderSide: BorderSide(color: const Color.fromARGB(255, 242, 8, 8)),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 250,
                  child: TextField(
                    style: TextStyle(color: Colors.black),
                    enabled: true,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(color: Colors.white),
                      hintStyle: TextStyle(color: Colors.white),
                      hintText: "example@gmail.com",
                      fillColor: const Color.fromARGB(156, 234, 217, 217),
                      filled: true,
                      border: UnderlineInputBorder(),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 250,
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    enabled: true,
                    decoration: InputDecoration(
                      labelStyle: TextStyle(color: Colors.white),
                      hintStyle: TextStyle(color: Colors.white),
                      prefixIconColor: Colors.white,
                      labelText: 'Label',
                      hintText: 'google',
                      prefixText: 'www.',
                      suffixText: '.com',
                      fillColor: const Color.fromARGB(156, 234, 217, 217),
                      filled: true,
                      border: UnderlineInputBorder(
                        // borderSide: BorderSide(color: const Color.fromARGB(255, 242, 8, 8)),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 250,
                  child: TextField(
                    maxLength: 10,
                    style: TextStyle(color: Colors.white),
                    enabled: true,
                    decoration: InputDecoration(
                      labelStyle: TextStyle(color: Colors.white),
                      labelText: 'Username',
                      fillColor: const Color.fromARGB(156, 234, 217, 217),
                      filled: true,
                      alignLabelWithHint: true,
                      hintMaxLines: 10,

                      border: UnderlineInputBorder(
                        // borderSide: BorderSide(color: const Color.fromARGB(255, 242, 8, 8)),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 250,
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    enabled: true,
                    decoration: InputDecoration(
                      labelStyle: TextStyle(color: Colors.white),
                      labelText: 'Label',
                      fillColor: const Color.fromARGB(156, 234, 217, 217),
                      filled: true,
                      helperText:
                          'Supporting text that is long and perhaps goes onto another line.',
                      helperMaxLines: 2,
                      border: UnderlineInputBorder(
                        // borderSide: BorderSide(color: const Color.fromARGB(255, 242, 8, 8)),
                      ),
                    ),
                  ),
                ),
              ),
              // remianing the obscure text
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 250,
                  child: TextField(
                    obscureText: obss,
                    style: TextStyle(color: Colors.white),
                    enabled: true,
                    decoration: InputDecoration(
                      labelStyle: TextStyle(color: Colors.white),
                      labelText: 'Enter password',
                      suffixIcon: IconButton(
                        icon: Icon(
                          obss ? Icons.visibility : Icons.visibility_off,
                        ),
                        onPressed: () {
                          setState(() {
                            obss = !obss;
                          });
                        },
                      ),
                      fillColor: const Color.fromARGB(156, 234, 217, 217),
                      filled: true,
                      helperMaxLines: 2,
                      border: UnderlineInputBorder(
                        // borderSide: BorderSide(color: const Color.fromARGB(255, 242, 8, 8)),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
