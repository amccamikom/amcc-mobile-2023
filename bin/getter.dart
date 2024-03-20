class Mobil{
  String _warna;
  String get warna => _warna;
  Mobil (this._warna);
}

void main(){
  Mobil mobil = Mobil("merah");

  print("warna mobil :${mobil.warna}");
  
}