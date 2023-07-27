import 'package:flutter/material.dart';
import 'package:asawolof/zonetexte.dart';
import 'package:asawolof/sms.dart';
import 'package:asawolof/parametres.dart';

import 'preambule.dart';
import 'acceuil.dart';
import 'historique.dart';
import 'sidebar.dart';
import 'caracteristiques.dart';
import 'clefs.dart';
import 'exemple.dart';
import 'presentation.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentPage = SidebarSections.acceuil;

  @override
  Widget build(BuildContext context) {
    var container;
    if (currentPage == SidebarSections.acceuil) {
      container = AcceuilPage();
    } else if (currentPage == SidebarSections.preambule) {
      container = PreambulePage();
    } else if (currentPage == SidebarSections.historique) {
      container = HistoriquePage();
    } else if (currentPage == SidebarSections.caracteristiques) {
      container = CaracteristiquesPage();
    } else if (currentPage == SidebarSections.clefs) {
      container = ClefsPage();
    } else if (currentPage == SidebarSections.exemple) {
      container = Exemple();
    } else if (currentPage == SidebarSections.presentation) {
      container = Presentation();
    } else if (currentPage == SidebarSections.parametres) {
      container = ParametresPage();
    } else if (currentPage == SidebarSections.zonetexte) {
      container = Zonetexte();
    } else if (currentPage == SidebarSections.sms) {
      container = SmsPage();
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 32, 53, 89),
        title: Text("Asa | Version Wolof"),
      ),
      body: container,
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Sidebar(),
                SidebarList(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget SidebarList() {
    return Container(
      padding: EdgeInsets.only(
        top: 15,
      ),
      child: Column(
        // shows the list of menu Sidebar
        children: [
          menuItem(1, "Acceuil", Icons.home,
              currentPage == SidebarSections.acceuil ? true : false),
          menuItem(2, "Preambule", Icons.first_page,
              currentPage == SidebarSections.preambule ? true : false),
          menuItem(3, "Historique", Icons.book_online_outlined,
              currentPage == SidebarSections.historique ? true : false),
          menuItem(4, "Caracteristiques de l'ASA", Icons.add_task,
              currentPage == SidebarSections.caracteristiques ? true : false),
          menuItem(5, "Clefs d\'accés à l'ASA", Icons.key_outlined,
              currentPage == SidebarSections.clefs ? true : false),
          menuItem(6, "Exemples", Icons.article,
              currentPage == SidebarSections.exemple ? true : false),
          menuItem(7, "Presentation des lettres", Icons.table_chart,
              currentPage == SidebarSections.presentation ? true : false),
          Divider(),
          menuItem(8, "Paramateres", Icons.settings_outlined,
              currentPage == SidebarSections.parametres ? true : false),
          Divider(),
          menuItem(9, "Zone de saisie de texte ASA", Icons.text_fields,
              currentPage == SidebarSections.zonetexte ? true : false),
          menuItem(10, "Envoyer un sms en ASA", Icons.message_outlined,
              currentPage == SidebarSections.sms ? true : false),
        ],
      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? Colors.grey[300] : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentPage = SidebarSections.acceuil;
            } else if (id == 2) {
              currentPage = SidebarSections.preambule;
            } else if (id == 3) {
              currentPage = SidebarSections.historique;
            } else if (id == 4) {
              currentPage = SidebarSections.caracteristiques;
            } else if (id == 5) {
              currentPage = SidebarSections.clefs;
            } else if (id == 6) {
              currentPage = SidebarSections.exemple;
            } else if (id == 7) {
              currentPage = SidebarSections.presentation;
            } else if (id == 8) {
              currentPage = SidebarSections.parametres;
            } else if (id == 9) {
              currentPage = SidebarSections.zonetexte;
            } else if (id == 10) {
              currentPage = SidebarSections.sms;
            }
          });
        },
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum SidebarSections {
  acceuil,
  preambule,
  historique,
  caracteristiques,
  clefs,
  exemple,
  presentation,
  parametres,
  zonetexte,
  sms
}
