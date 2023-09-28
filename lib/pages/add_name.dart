import 'package:flutter/material.dart';

class AddNamePage extends StatefulWidget {
  const AddNamePage({super.key});
  @override
  State<AddNamePage> createState() => _AddNamePageState();
}

class _AddNamePageState extends State<AddNamePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('asd'),
        ),
        body: Column(
          children: [
            const TextField(
              decoration: const InputDecoration(hintText: 'Enter name'),
            ),
            ElevatedButton(onPressed: () {}, child: Text('Guardar')),
          ],
        ));
  }
}
