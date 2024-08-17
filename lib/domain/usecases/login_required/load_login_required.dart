import '../../entities/login_required/login_required_entity.dart';

abstract class LoadLoginRequired {
  Future<LoginRequiredEntity> load();
}
