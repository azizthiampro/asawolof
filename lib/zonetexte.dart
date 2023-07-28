import 'package:flutter/material.dart';

class Zonetexte extends StatelessWidget {
  const Zonetexte({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Retrieve Text Input',
      debugShowCheckedModeBanner: false,
      home: ZonetexteForm(),
    );
  }
}

// Define a custom Form widget.
class ZonetexteForm extends StatefulWidget {
  const ZonetexteForm({super.key});

  @override
  State<ZonetexteForm> createState() => _ZonetexteFormState();
}

// Define a corresponding State class.
// This class holds the data related to the Form.
class _ZonetexteFormState extends State<ZonetexteForm> {
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final myController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: TextField(
          controller: myController,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // When the user presses the button, show an alert dialog containing
        // the text that the user has entered into the text field.
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                // Retrieve the text the that user has entered by using the
                // TextEditingController.
                content: Text(
                  myController.text,
                  style: TextStyle(fontFamily: 'Asa'),
                ),
              );
            },
          );
        },
        tooltip: 'Show me the value!',

        child: const Icon(Icons.text_fields),
      ),
    );
  }
}
