
///[Essa classe vai substituir o onChanged que estavamos colocando diretamente la no Widget criado para o email]
///olha como tava:
/* 
InputTextEmailWidget(
onChange: print,
onValidate: (value) => value.contains('@') ? '' : 'Email inválido',
label: 'Email:',
),
*/

///agora olha como esta ficando \/

class LoginValidators {

  static String email(String value){
    if(value.contains('@')) {
      return '';
    } else {
      return 'Email inválido';
    }
  }

  static String password(String value){
    if(value.length >= 6) {
      return '';
    } else {
      return 'A senha deve ter no mínimo 6 caracteres';
    }
  }
}