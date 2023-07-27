import 'package:flutter/material.dart';

class HistoriquePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Text(
            "\nPour donner à cet alphabet toute la crédibilité requise, nous sommes passés par plusieurs phases dont:\n\n-Le souci depuis les années 60-70 de transcrire autrement et plus rapidement et fidèlement la langue maternelle\n\n- La revue des principales langues africaines et des difficultés qu'elles rencontraient dans leur écriture comme leur lecture, comme le passage d'une langue à une autre\n\n- Le dialogue avec la plus part des spécialistes et membres de la communauté scientifique, ce qui a permis d'améliorer le corpus initial et de stabiliser un alphabet de cinquante-quatre (54) consones (18 à 24 par parler) et sept (7) voyelles dans lequel on peut puiser pour écrire la plupart des langues communautaires africaines; d'où sa seconde appellation d'Alphabet Grenier\n\n- Après validation de l'instrument par plusieurs linguistes sénégalais et africains, il a été déposé au BSDA pour bénéficier de toute la protection requise et des droits d'auteurs. Il a été également envoyé à l'OAPI\n\n- Désir de relever le défi lancé aux intellectuels africains lors des assises de Dakar en 2003 pour l'adoption de trois à quatre grandes langues maternelles transfrontalières pour tout le continent",
            style: TextStyle(
                fontSize: 16.0, color: Color.fromARGB(255, 57, 57, 57)),
          ),
        ),
      ),
    );
  }
}
