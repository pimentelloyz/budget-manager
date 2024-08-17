import './translation.dart';

class Us implements Translation {
  // ACCOUNT
  @override
  String get login => 'Login';
  @override
  String get confirmEmail => 'Confirme seu email';
  @override
  String get email => 'Email';
  @override
  String get token => 'Token';
  @override
  String get accept => 'Accept';
  @override
  String get reload => 'Reload';
  @override
  String get baseCode => 'Código de base';
  @override
  String get register => 'Cadastro';
  @override
  String get enterYourDetails => 'Dados Principais';
  @override
  String get setAPassword => 'Defina uma senha';
  @override
  String get password => 'Senha';
  @override
  String get confirmPassword => 'Confirme sua senha';
  @override
  String get noAccount => 'Não tem conta?';
  @override
  String get registerNow => 'Cadastre-se agora';
  @override
  String get previousPassword => 'Senha anterior';
  @override
  String get updatedPassword => 'Senha atualizada';
  @override
  String get passwordUpdatedSuccessfully =>
      'Sua senha foi atualizada com sucesso.';

  // MESSAGES
  @override
  String get msgEmailInUse => 'The email is already in use.';
  @override
  String get msgInvalidCredentials => 'Invalid credentials.';
  @override
  String get msgInvalidField => 'Invalid field';
  @override
  String get msgRequiredField => 'Required field';
  @override
  String get msgUnexpectedError =>
      'Failed to load information. Please try again soon.';
  @override
  String get have8Characters =>
      'Sua senha deve possuir no mínimo 8 caracteres.';
  @override
  String get savedChanges => 'Alterações salvas';
  @override
  String get updatedSuccessfully =>
      'Suas alterações foram atualizados com sucesso.';
  @override
  String get wantToReport => 'Deseja denunciar?';
  @override
  String get wantToReportSubtitle =>
      'Tem certeza que deseja denunciar  a publicação?';
  @override
  String get report => 'Denunciar';

  //BUTTON
  @override
  String get close => 'Close';
  @override
  String get next => 'Next';
  @override
  String get save => 'Save';
  @override
  String get share => 'Share';
  @override
  String get cancel => 'Cancelar';
  @override
  String get logout => 'Log Out';
  @override
  String get deleteAccount => 'Excluir conta';
  @override
  String get yes => 'Sim';
  @override
  String get proceed => 'Continuar';
  @override
  String get finalizeRegistration => 'Finalizar Cadastro';
  @override
  String get seeAllMembers => 'Ver todos os membros';
  @override
  String get backToProfile => 'Voltar para o perfil';
  @override
  String get editProfile => 'Editar perfil';
  @override
  String get changePhoto => 'Alterar foto';
  @override
  String get saveEditions => 'Salvar alterações';
  @override
  String get link => 'link';
  @override
  String get openLink => 'Abrir link';

  // SHARED
  @override
  String get wait => 'Wait...';
  @override
  String get navigationTitle => 'Welcome';
  @override
  String get sendFeedback => 'Send feedback';
  @override
  String get noConnectionsAvailable => '';

  //PAGES
  @override
  String get nutrition => 'Nutrição';
  @override
  String get profile => 'Perfil';
  @override
  String get personalData => 'Dados pessoais';
  @override
  String get wanToDeleteAccount => 'Deseja excluir sua conta?';
  @override
  String get confirmAccountDeletion =>
      'Confirme a exclusão de sua conta no aplicativo.';
  @override
  String get enterBase => 'Agora, digite sua base';
  @override
  String get name => 'Nome';
  @override
  String get phone => 'Telefone';
  @override
  String get gender => 'Sexo';
  @override
  String get relationship => 'Relacionamento';
  @override
  String get anErrorHasOccurred => 'Something went wrong';
  @override
  String get youAreOffline => 'It looks like you are offline';
  @override
  String get checkInternetAccess => 'Check if the device has internet access';
  @override
  String get successTitle => 'Success';
  @override
  String get notificationTitle => 'Notificações';
  @override
  String get markReadNotification => 'Marcar como lidas';
  @override
  String get newMission => 'Nova missão';
  @override
  String get newMissionAvailable =>
      'Você possui uma nova missão disponível. Clique para conferir.';
  @override
  String get notificationInputTitle => 'Você ainda não possui notificações';
  @override
  String get notificationInputSubtitle =>
      'Quando você tiver notificações, elas irão aparecer aqui';
  @override
  String get missionTitle => 'Missões';
  @override
  String get yourMissions => 'Suas missões';
  @override
  String get levelLabel => 'Nível';
  @override
  String get dataLabel => 'Data';
  @override
  String get statusLabel => 'Status';
  @override
  String get baseMembers => 'Membros da sua base';
  @override
  String get myProfile => 'Meu Perfil';
  @override
  String get baseMembersTitle => 'Membros da base';
  @override
  String get baseTitle => 'Bases';
  @override
  String get searchbase => 'Digite o que você procura';
  @override
  String get logOffAccount => 'Sair da conta';
  @override
  String get messageLogOffAcount =>
      'Tem certeza de que deseja sair da sua conta?';
  @override
  String get toGoOut => 'Sair';
  @override
  String get addPublication => 'Adicionar publicação';
  @override
  String get address => 'Endereço';
  @override
  String get shepherd => 'Pastor responsável';
  @override
  String get baseLabel => 'Base';
  @override
  String get changePassword => 'Alterar senha';
  @override
  String get dateBirth => 'Data de Nascimento';
  @override
  String get loginRequired => 'Login necessário';
  @override
  String get needToLogin => ' Você precisa fazer login';
  @override
  String get loginRequiredSubtitle =>
      'Para visualizar essa funcionalidade, é preciso fazer login. Clique no botão abaixo e aproveite para ter acesso a todos os recursos!';
  @override
  String get searchMission => 'Busca de missões';
  @override
  String get toDoLogin => 'Fazer login';
  @override
  String get findBase => 'Encontre uma base';
}
