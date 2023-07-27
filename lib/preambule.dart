import 'package:flutter/material.dart';

class PreambulePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Text(
            '\nCe livret est destiné aux intellectuelles en français pour un apprentissage rapide de l\'alphabet de synthèse pour l\'Afrique dont le but est de réaliser les objectifs suivants:\n\n- Faciliter la communication entre differentes communautés africaines;\n\n- Contribuer à réduire les taux d\'analphabétisme en Afrique en utilisant comme relais les intellectuels;\n- Offrir aux scientifiques et aux techniciens un outil de vulgarisation de la science et de la technologie au sein des plus larges masses;\n\n- Participer à l\'intégration africaine;\n\n- Lutter contre la pauvreté et les grands fléaux;\n\n- Promouvoir le développement durable du continent africain.\n\nSi chaque intellectuel se fixe comme défi d\'alphabétiser chaque mois deux (02) analphabètes et que ces derniers en fassent autant, le taux d\'analphabétisme non seulement sera réduit mais la communication entre différents peuples africains s\'améliorerait d\'ici 2030\n\nNB: L\'ASA n\'est pas venu concurrencer les systèmes de transcription en usage dans les différents groupes linguistiques mais pour faciliter la communication entre elles. Il vient combler un vide pr§sent depuis tres longtemps et qui nous interpelle tous.',
            style: TextStyle(
                fontSize: 16.0, color: Color.fromARGB(255, 57, 57, 57)),
          ),
        ),
      ),
    );
  }
}
