/*

Buatlah class Calculator

 a. Atribut : Operan 1 bertipe double dan Operan 2 bertipe double
 b. Method :
   - isiOperan1(double x) : Mengisi atribut operan 1 dengan nilai x
   - isiOperan2(double x) : Mengisi atribut operan 2 dengan nilai x
   - tambah()
   - kurang()
   - kali()
   - bagi()
   - pangkat()

*/

import 'dart:math';

class Calculator {
  // a. Atribut : Operan 1 bertipe double dan Operan 2 bertipe double
  double operan1, operan2;

  Calculator(this.operan1, this.operan2);

  // Method :

  // - isiOperan1(double x) : Mengisi atribut operan 1 dengan nilai x
  void isiOperan1({double? value}) {
    this.operan1 = value ?? 0;
  }

  // - isiOperan2(double x) : Mengisi atribut operan 2 dengan nilai x
  void isiOperan2({double? value}) {
    this.operan2 = value ?? 0;
  }

  // - tambah
  double tambah() {
    double res = (this.operan1 + this.operan2);
    return res;
  }

  // - kurang
  double kurang() {
    double res = (this.operan1 - this.operan2);
    return res;
  }

  // - kali
  double kali() {
    double res = (this.operan1 * this.operan2);
    return res;
  }

  // - bagi
  double bagi() {
    double res = (this.operan1 / this.operan2);
    return res;
  }

  // - pangkat
  num pangkat() {
    num res = pow(this.operan1, this.operan2);
    return res;
  }
}

void main() {
  Calculator calculator = Calculator(2, 5);
  print('Operan 1 = ${calculator.operan1}');
  print('Operan 2 = ${calculator.operan2}');

  print('----------');
  double tambah = calculator.tambah();
  print('${calculator.operan1} + ${calculator.operan2} = $tambah');

  print('----------');
  double kurang = calculator.kurang();
  print('${calculator.operan1} - ${calculator.operan2} = $kurang');

  print('----------');
  double kali = calculator.kali();
  print('${calculator.operan1} * ${calculator.operan2} = $kali');

  print('----------');
  double bagi = calculator.bagi();
  print('${calculator.operan1} : ${calculator.operan2} = $bagi');

  print('----------');
  num pangkat = calculator.pangkat();
  print('${calculator.operan1} ^ ${calculator.operan2} = $pangkat');
}
