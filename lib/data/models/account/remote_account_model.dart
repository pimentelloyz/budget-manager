import '../../../domain/entities/account/account_entity.dart';
import '../../http/http.dart';

class RemoteAccountModel {
  final bool success;
  final String token;
  final int statusCode;
  final String type;

  RemoteAccountModel({
    required this.success,
    required this.token,
    required this.statusCode,
    required this.type,
  });

  factory RemoteAccountModel.fromJson(Map json) {
    if (!json.containsKey('success')) {
      throw HttpError.invalidData;
    }
    return RemoteAccountModel(
      success: json['success'],
      token: json['token'],
      statusCode: json['statusCode'],
      type: json['type'],
    );
  }

  AccountEntity toEntity() => AccountEntity(
        success: success,
        token: token,
        statusCode: statusCode,
        type: AccountType.values.firstWhere(
          (element) => element.value == type,
        ),
      );
}
