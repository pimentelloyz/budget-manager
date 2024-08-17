import '../../../domain/entities/register/register_entity.dart';
import '../../../domain/helpers/helpers.dart';
import '../../../domain/usecases/register/load_register.dart';
import '../../http/http.dart';
import '../../models/models.dart';

class RemoteLoadRegister implements LoadRegister {
  final String url;
  final HttpClient httpClient;

  RemoteLoadRegister({required this.url, required this.httpClient});

  @override
  Future<RegisterEntity> load() async {
    try {
      final httpResponse =
          await httpClient.request(url: url, method: HttpMethod.get);
      return RemoteRegisterModel.fromJson(httpResponse).toEntity();
    } on HttpError catch (error) {
      throw error == HttpError.unauthorized
          ? DomainError.accessDenied
          : DomainError.unexpected;
    }
  }
}
