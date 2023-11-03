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
          child:ShaderMask(
            blendMode: BlendMode.srcIn,
            shaderCallback:(Rect bounds)=> const LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [Colors.green,],
            ).createShader(bounds),

            child: const FaIcon(FontAwesomeIcons.whatsapp,size: 100,),

          )),
    );
  }
}
