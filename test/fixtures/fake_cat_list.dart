import 'package:cat_catcher_app/features/cat/domain/entities/cat.dart';
import 'package:cat_catcher_app/features/cat/domain/entities/cat_image.dart';

final fakeCatList = [
  Cat(
    id: "abys",
    name: "Abyssinian",
    origin: "Egypt",
    intelligence: 5,
    description: "Affectionate and active.",
    lifeSpan: "14 - 15",
    wikipediaUrl: "https://en.wikipedia.org/wiki/Abyssinian_(cat)",
    image: CatImage(
      id: "0XYvRd7oD",
      width: 1204,
      height: 1445,
      url: "https://cdn2.thecatapi.com/images/0XYvRd7oD.jpg",
    ),
  ),
];
