class Mobil {
  String ? jenis;
  void merk (String merk){
    print("Mobil $jenis ini mereknya adalah $merk");
  }
}

class Hootwhells extends Mobil {}
class Odongodong extends Mobil {}
class Angkut extends Mobil{}

void main(){
 var hootwhells = Hootwhells();
 hootwhells.jenis = "mainan";
 hootwhells.merk("subaru");
  
  var odongodong = Odongodong();
  odongodong.jenis = "mainan";
  odongodong.merk("kang bahar");

  var angkut = Angkut();
  angkut.jenis= "angkut";
  angkut.merk("Daihatsu");
}