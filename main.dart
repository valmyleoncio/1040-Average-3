import 'dart:io';

void main() {
  
  double? N1, N2, N3, N4;

  N1 = double.parse(stdin.readLineSync()!);
  N2 = double.parse(stdin.readLineSync()!);
  N3 = double.parse(stdin.readLineSync()!);
  N4 = double.parse(stdin.readLineSync()!);

  var sum = (N1 * 2.0 + N2 * 3.0 + N3 * 4.0 + N4) / 10;
  print('Media: ${sum.toStringAsFixed(1)}');

  if(sum >= 7.0)
    print('Aluno aprovado.');

  else if(sum < 5.0)
    print('Aluno reprovado.');

  else if(sum >= 5.0 && sum <= 6.9){
    print('Aluno em exame.');
    double? NF = double.parse(stdin.readLineSync()!);
    print('Nota do exame: ${NF.toStringAsFixed(1)}');

    var result = (sum + NF) / 2.0;
    result >= 5.0? print('Aluno aprovado.') : print('Aluno reprovado.');
    print('Media final: ${result.toStringAsFixed(1)}');
  }
}