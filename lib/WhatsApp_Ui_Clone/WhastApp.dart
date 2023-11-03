import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(){
  runApp(const MaterialApp(home: WhatsApp(),));
}


class WhatsApp extends StatelessWidget {
  const WhatsApp({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
            child: const FaIcon(FontAwesomeIcons.whatsapp,size: 100,color: Colors.green,),

          )
    );
  }
}
