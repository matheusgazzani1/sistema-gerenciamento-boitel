class UserLocal{
  String? id;
  String? name;
  String? email;
  String? password;
  String? confirmPassword;
  UserLocal({
    this.id,
    this.name,
    this.email,
    this.password,
    this.confirmPassword,
  });
  // MÉTODO PARA CONVERTER ALGUM OBJETO EM UMA ESTRUTURA COMPATÍVEL
  // COM A ESTRUTURA DO FIREBASE
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'email': email,
      'password': password,
      'confirmPassword': confirmPassword
    };
  }

  // MÉTODO PARA CONVERTER FORMATO JSON PARA OBJETO
  factory UserLocal.fromMap(Map<String, dynamic> map){
    return UserLocal(id: map['id'], 
    name: map['name'], 
    email: map['email'], 
    password: map['password'], 
    confirmPassword: map['confirmPassword']);
  }
}