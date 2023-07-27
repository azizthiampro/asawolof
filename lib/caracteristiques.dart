import 'package:flutter/material.dart';

class CaracteristiquesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Text(
            "\nL'ASA résulte d'une synthèse de caracteres graphiques gréco-latins et arabe. II est constitué précisément de consonnes de l'alphabet latin et de voyelles arabes ou de symboles tirés d'elles.\nPour le wolof, le nombre de consonnes s'élève à 22 et celui des voyelles à 6. Pour vous qui parlez et écrivez en français, voyez d'abord les caractères qui vous sont les plus familiers que sont:\nLes consonnes gréco-latines\nOn trouve\ndes lettres qui s'écrivent et se prononcent comme en français :\n\nnb a f g h k l m n p r s t w y\n\nDes lettres qui sécrivent comme en français mais se prononcent différemment\n\nc comme dans la prononciation des mots anglais Thierry [ceri] et wolof caabi [ca : bi] : clé\n\nj comme dans la prononciation des mots Dieu Je] et wolof [jam]: piquer",
            style: TextStyle(
                fontSize: 16.0, color: Color.fromARGB(255, 57, 57, 57)),
          ),
        ),
      ),
    );
  }
}
