import '../../../../data/usecases/register/remote_load_register.dart';
import '../../../../domain/usecases/register/load_register.dart';
import '../../http/http.dart';

LoadRegister makeRemoteLoadRegister() => RemoteLoadRegister(
    httpClient: makeAuthorizeHttpClientDecorator(),
    url: makeApiUrl('register/'));
