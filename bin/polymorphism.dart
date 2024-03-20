abstract class Mobil {
 void bergerak();
 void klakson();
}
//JIKA TANPA METHOD AKAN BERNAMA ABSTRACTION KARNA UNTUK MEMANGGIL
//ABSTRACTION KE PROGRAM UTAMA HARUS MENGGUNAKAN METHOD DAN PROGRAM AKAN BERUBAH MENJADI POLYMORPHISM
class kendaraan extends Mobil {
  @override
  void bergerak (){
    print("ngeeeeeeeng");
  }
  void klakson(){
    print("tin tin");
  }
}
void main (){
  Mobil mobil = kendaraan();
  mobil.bergerak();
  mobil.klakson();
}