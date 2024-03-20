class Mobil {
  String _warna;
  String get warna => _warna;
  Mobil(this._warna);

  set validasi (String value){
    if (value.toLowerCase() == "merah" || value.toLowerCase() == 'biru' ) {
       _warna = value;
       print("benar, warna yang diberikan valid");
    } else {
      print("bukan, warna tidak valid");
    }
  }
}

void main(){
 Mobil mobil = Mobil("hijau");

 mobil.validasi = "Biru";

 print("halo aku mantan ricki bernama: ${mobil._warna}");
}