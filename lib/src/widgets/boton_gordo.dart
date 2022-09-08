import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BotonGordo extends StatelessWidget {
   
  const BotonGordo({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [ 
        _BotonGordoBackGround(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            SizedBox(height: 140, width: 40),
            FaIcon(FontAwesomeIcons.carBurst, color: Colors.white, size: 40),
            SizedBox(width: 20),
            Expanded(child: Text( 'Motor accident', style: TextStyle(color: Colors.white, fontSize: 18))),
            FaIcon(FontAwesomeIcons.chevronRight, color: Colors.white),
            SizedBox(width: 40)
          ],
        )
      ],
    );
  }
}

class _BotonGordoBackGround extends StatelessWidget {
  const _BotonGordoBackGround({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        // color: Colors.red,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2), 
            offset: const Offset(4, 6), 
            blurRadius: 10
          )
        ],
        borderRadius: BorderRadius.circular(15),
        gradient: const LinearGradient(
          colors: [
            Color(0xff6989f5),
            Color(0xff906ef5)
          ]
        )
      ),
      child: ClipRRect( // para hacer border radius a todo el stack y no sobre salga el icono
        borderRadius: BorderRadius.circular(15),
        child: Stack(
          children: [
            Positioned(
              right: -20,
              top: -20,
              child: FaIcon(FontAwesomeIcons.carBurst, size: 150, color: Colors.white.withOpacity(0.2))
            )
          ],
        ),
      ),
    );
  }
}