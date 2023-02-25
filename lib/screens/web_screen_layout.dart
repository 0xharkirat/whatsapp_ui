import 'package:flutter/material.dart';
import 'package:whatsapp_ui/widgets/contact_list.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget> [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: const <Widget> [
                  ContactList(),
                ],
              ),
            ),
          ),
          // Web Screen
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/backgroundImage.png'),
                fit: BoxFit.cover,
              )
            ),
          )
        ],
      )
    );
  }
}
