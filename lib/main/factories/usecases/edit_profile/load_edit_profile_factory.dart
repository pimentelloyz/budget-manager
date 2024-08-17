import '../../../../data/usecases/edit_profile/remote_load_edit_profile.dart';
import '../../../../domain/usecases/usecases.dart';
import '../../http/http.dart';

LoadEditProfile makeRemoteLoadEditProfile() => RemoteLoadEditProfile(
    httpClient: makeAuthorizeHttpClientDecorator(),
    url: makeApiUrl('register/'));
