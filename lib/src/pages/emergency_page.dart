import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:e_emergency_layout/src/widgets/header.dart';
import 'package:e_emergency_layout/src/widgets/boton_gordo.dart';

class EmergencyPage extends StatelessWidget {
   
  const EmergencyPage({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // backgroundColor: Colors.red,
      body: Center( 
        child: BotonGordo(),
      ),
    );
  }
}

class PageHeader extends StatelessWidget {
  const PageHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const IconHeader(
      iconHeader: FontAwesomeIcons.plus,
      tituloHeader: 'Haz Solicitado',
      subtituloHeader: 'Asistencia Médica', 
      initialColorShadowHeader: Color(0xff526bf6),
      finalColorShadowHeader: Color(0xff67acf2),
    );
  }
}