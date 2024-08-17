import '../../../../data/usecases/profile/remote_load_profile.dart';
import '../../../../domain/usecases/profile/load_profile.dart';
import '../../http/http.dart';

LoadProfile makeRemoteLoadProfile() => RemoteLoadProfile(
    httpClient: makeAuthorizeHttpClientDecorator(),
    url: makeApiUrl('nutrition/'));
