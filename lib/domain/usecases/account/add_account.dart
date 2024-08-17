import '../../entities/account/account_entity.dart';

abstract class AddAccount {
  Future<void> add(AddAccountParams params);
}

class AddAccountParams {
  final String name;
  final String email;
  final String phone;
  final String gender;
  final AccountType type;

  AddAccountParams({
    required this.name,
    required this.email,
    required this.phone,
    required this.gender,
    required this.type,
  });

  Map toMap() => {
        'name': name,
        'email': email,
        'phone': phone,
        'gender': gender,
        'type': type.value,
      };
}
