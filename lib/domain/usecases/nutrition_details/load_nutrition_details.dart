import '../../entities/nutrition_details/nutrition_details_entity.dart';

abstract class LoadNutritionDetails {
  Future<NutritionDetailsEntity> load();
}
