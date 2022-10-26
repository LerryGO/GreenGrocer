class UserModel {
  String? name;
  String? email;
  String? phone;
  String? cpf;
  String? password;

  UserModel({
    required this.email,
    required this.name,
    required this.phone,
    required this.cpf,
    required this.password,
  });
}
