import 'dart:ffi';

import 'package:flutter/material.dart';

class firstpage extends StatefulWidget {
  const firstpage({super.key});

  @override
  State<firstpage> createState() => _firstpageState();
}

bool ischeck = false;

class _firstpageState extends State<firstpage> {
  final GlobalKey<FormState> _fromKey = GlobalKey();
  final TextEditingController _text1 = TextEditingController();
  final TextEditingController _text3 = TextEditingController();
  String? title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("INPUT Widgets"),
      ),
      body: Form(
        key: _fromKey,
        child: ListView(
          children: [
            Text("TextFormFied#1"),
            TextFormField(
              controller: _text1,
              keyboardType: TextInputType.text,
              onChanged: (value) {
                setState(() {});
              },
            ),
            Text("show input: ${_text1.text}"),
            Text("TextFormFied#2"),
            TextFormField(
              keyboardType: TextInputType.phone,
              obscureText: true,
              onChanged: (value) {
                setState(() {});
              },
            ),
            Text("TextFormFied#3"),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter a search input',
              ),
              controller: _text3,
              keyboardType: TextInputType.text,
              onChanged: (value) {
                setState(() {});
              },
            ),
            Text("show input: ${_text3.text}"),
            Text("Radiolist Title #1 Simple"),
            RadioListTile(
                title: const Text('item title#1'),
                controlAffinity: ListTileControlAffinity.platform,
                value: "item title#1",
                groupValue: title,
                onChanged: ((value) {
                  setState(() {
                    title = value;
                  });
                })),
            RadioListTile(
                title: const Text('item title#2'),
                controlAffinity: ListTileControlAffinity.platform,
                value: "item title#2",
                groupValue: title,
                onChanged: ((value) {
                  setState(() {
                    title = value;
                  });
                })),
            RadioListTile(
                title: const Text('item title#3'),
                controlAffinity: ListTileControlAffinity.platform,
                value: "item title#3",
                groupValue: title,
                onChanged: ((value) {
                  setState(() {
                    title = value;
                  });
                })),
            Text("show input: ${title}"),
            Text("Radiolist Title #1 Simple"),
            CheckboxListTile(
                title: Text("Libary simple #1"),
                value: ischeck,
                onChanged: ((value) {
                  setState(() {
                    ischeck = value!;
                  });
                })),
            Text("show input: ${ischeck}"),
          ],
        ),
      ),
    );
  }
}
