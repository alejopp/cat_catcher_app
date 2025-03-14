import 'package:cat_catcher_app/features/cat/data/models/cat_model.dart';
import 'package:cat_catcher_app/features/cat/domain/entities/cat.dart';
import 'package:cat_catcher_app/features/cat/domain/entities/cat_image.dart';

class CatMapper {
  static Cat fromCatModelToCat(CatModel catModel) => Cat(
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
        temperament: catModel.temperament ?? '',
        countryCode: catModel.countryCode ?? '',
        adaptability: catModel.adaptability ?? 0,
        childFriendly: catModel.childFriendly ?? 0,
        socialNeeds: catModel.socialNeeds ?? 0,
        dogFriendly: catModel.dogFriendly ?? 0,
      );
}
