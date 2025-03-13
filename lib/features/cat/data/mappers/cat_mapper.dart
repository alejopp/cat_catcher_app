import 'package:cat_catcher_app/features/cat/data/models/cat_model.dart';
import 'package:cat_catcher_app/features/cat/domain/entities/cat.dart';
import 'package:cat_catcher_app/features/cat/domain/entities/cat_image.dart';

class CatMapper {
  static fromCatModelToCat(CatModel catModel) => Cat(
        id: catModel.id ?? '',
        name: catModel.name ?? '',
        origin: catModel.origin ?? '',
        intelligence: catModel.intelligence ?? 0,
        description: catModel.description ?? '',
        lifeSpan: catModel.lifeSpan ?? '',
        wikipediaUrl: catModel.wikipediaUrl ?? '',
        image: CatImage(
          id: catModel.image?.id ?? '',
          width: catModel.image?.width ?? 0,
          height: catModel.image?.height ?? 0,
          url: catModel.image?.url ?? '',
        ),
      );
}
