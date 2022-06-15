class Unit {
  late String id;
  String nomecompleto;
  String nascimento;
  String cpf;
  String celular;
  Unit (this.nascimento, this.nomecompleto, this.cpf, this.celular);

  // Método para converter formato JSON em objeto
  Unit.fromMap(Map<String, dynamic> map) 
  : nascimento = map['nascimento'],
    cpf = map['cpf'], 
    celular = map['celular'],
    nomecompleto = map['nomecompleto'];
  
  // Permitir que possamos enviar informações ao Firebase
  Map<String, dynamic>toMap(){
    return {'nascimento': nascimento, 'nomecompleto' : nomecompleto, 'cpf' : cpf, 'celular' : celular};
  }
}