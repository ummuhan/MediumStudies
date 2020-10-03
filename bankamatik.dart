main(List<String> args) {
  int bakiye = 1000;
  int cekilecekTutar = 500;

  if (cekilecekTutar < 0) {
    print("Hatalı bir giriş yaptınız. Lütfen kartınızı alınız.");
  } else if (bakiye >= cekilecekTutar) {
    int kalanBakiye = bakiye - cekilecekTutar;
    print(
        "Çekmek istediğiniz $cekilecekTutar hazırlanıyor. Hesabınızda $kalanBakiye ₺ bakiyeniz kalmmıştır ");
  } else if (bakiye < cekilecekTutar) {
    print(
        "Girdiğiniz tutar $cekilecekTutar ₺ bakiyeniz olan $bakiye ₺ den fazladır.Üzgünüz kartınızı alınız.");
  } else {
    print("Hatalı işlem.");
  }
}
