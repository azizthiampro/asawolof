import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_sms/flutter_sms.dart';

void main() => runApp(SmsPage());

class SmsPage extends StatefulWidget {
  @override
  _SmsPageState createState() => _SmsPageState();
}

class _SmsPageState extends State<SmsPage> {
  late TextEditingController _controllerPeople, _controllerMessage;
  String? _message, body;
  List<String> people = [];

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  Future<void> initPlatformState() async {
    _controllerPeople = TextEditingController();
    _controllerMessage = TextEditingController();
  }

  Future<void> _sendSMS(List<String> recipients) async {
    try {
      String _result = await sendSMS(
        message: _controllerMessage.text,
        recipients: recipients,
      );
      setState(() => _message = _result);
    } catch (error) {
      setState(() => _message = error.toString());
    }
  }

  Widget _phoneTile(String name) {
    return Padding(
      padding: const EdgeInsets.all(3),
      child: Container(
          decoration: BoxDecoration(
              border: Border(
            bottom: BorderSide(color: Colors.grey.shade300),
            top: BorderSide(color: Colors.grey.shade300),
            left: BorderSide(color: Colors.grey.shade300),
            right: BorderSide(color: Colors.grey.shade300),
          )),
          child: Padding(
            padding: const EdgeInsets.all(4),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () => setState(() => people.remove(name)),
                ),
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: Text(
                    name,
                    textScaleFactor: 1,
                    style: const TextStyle(fontSize: 12),
                  ),
                )
              ],
            ),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: <Widget>[
            if (people.isEmpty)
              const SizedBox(height: 0)
            else
              SizedBox(
                height: 90,
                child: Padding(
                  padding: const EdgeInsets.all(3),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: List<Widget>.generate(people.length, (int index) {
                      return _phoneTile(people[index]);
                    }),
                  ),
                ),
              ),
            ListTile(
              leading: const Icon(Icons.people),
              title: TextField(
                controller: _controllerPeople,
                decoration: const InputDecoration(
                    labelText: 'Ajouter le numero de telephone'),
                keyboardType: TextInputType.number,
                onChanged: (String value) => setState(() {}),
              ),
              trailing: IconButton(
                icon: const Icon(Icons.add),
                onPressed: _controllerPeople.text.isEmpty
                    ? null
                    : () => setState(() {
                          people.add(_controllerPeople.text.toString());
                          _controllerPeople.clear();
                        }),
              ),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.message),
              title: TextField(
                style: TextStyle(fontFamily: 'Asa'),
                decoration: const InputDecoration(
                    labelText: 'Ajouter un message',
                    labelStyle: TextStyle(fontFamily: 'Satoshi')),
                controller: _controllerMessage,
                onChanged: (String value) => setState(() {}),
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 35, right: 35),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 32, 53, 89),
                  textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontStyle: FontStyle.normal),
                ),
                onPressed: () {
                  _send();
                },
                child: Text(
                  'Envoyez un SMS en ASA',
                ),
              ),
            ),
            Visibility(
              visible: _message != null,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Text(
                        _message ?? 'Pas de donnêes',
                        maxLines: null,
                        style: TextStyle(color: Color.fromRGBO(150, 13, 13, 1)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _send() {
    if (people.isEmpty) {
      setState(() => _message = 'Vous n\'avez pas validé de numero.');
    } else {
      _sendSMS(people);
    }
  }
}
