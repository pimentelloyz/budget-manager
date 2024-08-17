class AccountEntity {
  final bool success;
  final String token;
  final int statusCode;
  final AccountType type;

  AccountEntity({
    required this.success,
    required this.token,
    required this.statusCode,
    required this.type,
  });
}

enum AccountType {
  j('J'),
  ljb('JLB');

  final String value;
  const AccountType(this.value);
}
