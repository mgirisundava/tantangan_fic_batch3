import 'dart:math';

/*

Buatlah sebuah class bernama Titik yang digunakan untuk menyimpan sebuah titik koordinat.

Setiap titik mempunyai atribut posisi X dan atribut posisi Y.
Class ini harus dapat melakukan hal berikut :
  a. Memberikan nilai default (X=0, Y=0) ketika X Dan Y Belum didefinisikan. (done)
  b. Mengisi Nilai X. (done)
  c. Mengisi Nilai Y. (done)
  d. Mengisi Nilai X Dan Y (sekaligus). (done)
  e. Menampilkan Nilai X Dan Y.
  f. Pindah ke Koordinat Lain (berdasarkan jarak atau ke titik tertentu.
  g. Menghitung Jarak Ke Titik Lain.

*/

class Titik {
  double x;
  double y;

  // a. Memberikan nilai default (X=0, Y=0) ketika X Dan Y Belum didefinisikan.
  Titik({this.x = 0, this.y = 0});

  // b. Mengisi Nilai X.
  void setX(double value) {
    this.x = value;
    print('Titik X = $x.');
  }

  // c. Mengisi Nilai Y.
  void setY(double value) {
    this.y = value;
    print('Titik Y = $y.');
  }

  // d. Mengisi Nilai X Dan Y (sekaligus).
  void setXY(double xValue, double yValue) {
    this.x = xValue;
    this.y = yValue;
  }

  // e. Menampilkan Nilai X Dan Y.
  void showXY() {
    print('Titik X = ${this.x} & Titik Y = ${this.y}.');
  }

  // f. Pindah ke Koordinat Lain (berdasarkan jarak atau ke titik tertentu.

  // NOTE : Saya belum tahu rumus untuk pindah koordinat berdasarkan jarak/radius.
  void setNewCoordinate(double xValue, double yValue) {
    this.x = xValue;
    this.y = yValue;
    print('Titik Baru X = $x & Titik Y = $y.');
  }

  // g. Menghitung Jarak Ke Titik Lain.
  double calculateDistance(Titik titik) {
    double dx = this.x - titik.x;
    double dy = this.y - titik.y;
    return sqrt(dx * dx + dy * dy);
  }
}

void main() {
  Titik titik1 = Titik();
  print('Nilai Default Koordinat X dan Y = ${titik1.x},${titik1.y}.');
  print('----------');
  titik1.setX(-41.77857);
  print('----------');
  titik1.setY(-17.23044);
  print('----------');
  titik1.setXY(-41.77857, -17.23044);
  titik1.showXY();
  print('----------');
  Titik titik2 = Titik();
  titik2.setNewCoordinate(23.55566, 14.37468);
  print('----------');
  double distance = titik1.calculateDistance(titik2);
  print(
    "Jarak antara koordinat lama dan koordinat baru adalah $distance satuan.",
  );
}
