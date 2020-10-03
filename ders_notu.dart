main(List<String> args) {
  String not = "AA";

  switch (not) {
    case ("AA"):
      {
        print("Notunuz 100 ve 90 arasında bir değerdir.");
      }
      break;
    case ("BA"):
      {
        print("Notunuz 90 ve 80 arasında bir değerdir.");
      }
      break;
    case ("BB"):
      {
        print("Notunuz 80 ve 70 arasında bir değerdir.");
      }
      break;
    case ("CB"):
      {
        print("Notunuz 70 ve 60 arasında bir değerdir.");
      }
      break;
    case ("CC"):
      {
        print("Notunuz 60 ve 50 arasında bir değerdir.");
      }
      break;

    case ("DC"):
      {
        print("Notunuz 50 ve 40 arasında bir değerdir. Ortalamanız 2'den yüksek ise geçersiniz.");
      }
      break;
    case ("FF"):
      {
        print("Notunuz 40'dan düşüktür.Kaldınız.");
      }
      break;

    default:
      {
        print("Hatalı değer girişi yaptınız.");
      }
  }
  ;
}
