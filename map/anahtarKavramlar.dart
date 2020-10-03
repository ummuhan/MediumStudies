main(List<String> args) {
  //---Merhabalar 👋Bu kodda sizlere dart dilinde ve farklı dillerde kullanılan bazı özel kavramları anlatmaya çalışacağım. Keyifli çalışmalar.📚

  print("-----------------------------------");
  print("Interpolation Kavramı");
  String ad = "Ümmühan";
  String soyad = "Öksüz";
  print(ad + " " + soyad);
  print("$ad $soyad"); //Interpolation

  print("-----------------------------------");
  print("Literal Kavramı");
  "emre";
  32;

  print("-----------------------------------");
  print("Final-Const Kavramları");
  final temp1 = 10;
  const temp2 = 20;
  print(temp2);
  print(temp1);

  print("-----------------------------------");
  print("Ternary Kavramı");
  int sayi1 = 30;
  int sayi2 = 20;
  if (sayi1 > sayi2) {
    print("Sayi 1 büyüktür");
  } else {
    sayi1 = sayi2;
  }
  sayi1 > sayi2 ? print("Sayi 1 büyüktür") : sayi1 = sayi2;
//Yukarıda gösterilen iki if kapsamı da aynı işlemi yapmaktadır.

  print("-----------------------------------");
  print("Null kontrolü");

  String isim = "Ümmühan";
  String soyisim = "Öksüz";
  String mesaj;
  mesaj = isim ?? soyisim;
  print("Merhaba $mesaj"); //Çıktı Merhaba Ümmühan olacaktır.
  String name;
  mesaj = name ?? soyisim;
  print("Merhaba $mesaj"); //Çıktı Merhaba Öksüz olacaktır.
}

class kitap {
  final deneme = 10;
  static const makale = 10;
}

//-------------Final /Const ------------------------
class kur {
  final dolar = 7;
  static const euro = 9;
}
