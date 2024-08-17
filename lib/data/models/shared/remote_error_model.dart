import '../../../domain/entities/shared/error_entity.dart';
import '../../http/http_error.dart';

class RemoteErrorModel {
  final List<String> error;

  RemoteErrorModel({
    required this.error,
  });

  factory RemoteErrorModel.fromJson(Map json) {
    if (!json.containsKey('error')) {
      throw HttpError.invalidData;
    }
    if (!json.keys.toSet().containsAll(['error'])) {
      throw HttpError.invalidData;
    }

    return RemoteErrorModel(
      error:
          json['error'].map<String>((dynamic item) => item.toString()).toList(),
    );
  }

  ErrorEntity toEntity() => ErrorEntity(
        error: error,
      );

  Map toJson() => {
        'error': error,
      };
}
