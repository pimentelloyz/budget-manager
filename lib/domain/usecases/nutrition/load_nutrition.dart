import '../../entities/nutrition/nutrition_entity.dart';

abstract class LoadNutrition {
  Future<NutritionEntity> load();
}
