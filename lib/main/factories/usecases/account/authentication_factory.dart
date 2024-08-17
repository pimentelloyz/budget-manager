import '../../../../data/usecases/account/remote_authentication.dart';
import '../../../../domain/usecases/account/authentication.dart';
import '../../factories.dart';

Authentication makeRemoteAuthentication() => RemoteAuthentication(
    httpClient: makeDioAdapter(), url: makeApiUrl('auth/validate-user-token'));
