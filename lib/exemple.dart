import 'package:flutter/material.dart';

class Exemple extends StatelessWidget {
  const Exemple({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 400),
          child: ListView.builder(
            itemCount: _articles.length,
            itemBuilder: (BuildContext context, int index) {
              final item = _articles[index];
              return Container(
                height: 136,
                margin:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8.0),
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xFFE0E0E0)),
                    borderRadius: BorderRadius.circular(8.0)),
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    Expanded(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.title,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 8),
                        Text("${item.author} ",
                            style: Theme.of(context).textTheme.caption),
                        const SizedBox(height: 8),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icons.flag_circle_outlined,
                          ].map((e) {
                            return InkWell(
                              onTap: () {},
                              child: Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Icon(e, size: 16),
                              ),
                            );
                          }).toList(),
                        )
                      ],
                    )),
                    Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(item.imageUrl),
                            ))),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class Article {
  final String title;
  final String imageUrl;
  final String author;

  Article({
    required this.title,
    required this.imageUrl,
    required this.author,
  });
}

final List<Article> _articles = [
  Article(
    title: "Wolof",
    imageUrl:
        "https://static.latribune.fr/full_width/531866/un-des-fameux-ndiaga-ndiaye-petits-bus-poussifs-de-dakar.jpg",
    author: "Langue d'origine senegalaise",
  ),
  Article(
    title: "Swahili",
    author: "Langue originaire de la tanzanie",
    imageUrl:
        "https://mamanglobetrotteuse.com/wp-content/uploads/2015/11/IMG_0862.jpg",
  ),
  Article(
    title: "Hausa",
    author: "Langue originaire du Niger",
    imageUrl: "https://www.afdb.org/sites/default/files/niger-news.jpg",
  ),
  Article(
    title: "Lingala",
    author: "Langue originaire du congo",
    imageUrl:
        "https://www.nova.fr/wp-content/uploads/sites/2/2023/01/Les-mamans-du-Congo.jpg?fit=1280%2C847&quality=75",
  ),
  Article(
    title: "Sango",
    author: "Langue originaire du congo",
    imageUrl:
        "https://www.nova.fr/wp-content/uploads/sites/2/2022/05/d193f597-les-mamans-du-congo_kinzenguele-290.jpg",
  ),
  Article(
    title: " Bambara",
    author: "Langue originaire du mali",
    imageUrl: "https://www.101lasttribes.com/logo_tribes/Bambara.jpg",
  ),
  Article(
    title: "oromo",
    author: "Langue originaire d'ethiopie",
    imageUrl:
        "https://static01.nyt.com/images/2021/11/15/us/politics/15dc-diplo-1/15dc-diplo-1-mediumSquareAt3X.jpg",
  ),
];
