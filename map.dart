main(List<String> args) {
  Map<String, String> Hayvanlar = Map();
  Hayvanlar["fil"] = "En büyük hayvan";
  Hayvanlar["köpek"] = "En insan dostu hayvandır.";
  Hayvanlar["kedi"] = "En çılgın hayvandır.";
  Hayvanlar["aslan"] = "En güçülü hayvandır.";

  for (String key in Hayvanlar.keys) {
    print("Key değeri: $key");
  }
  for (String value in Hayvanlar.values) {
    print("Value değeri: $value");
  }
  Hayvanlar.forEach((key, value) {
    print("key : $key  value : $value");
  });

  Hayvanlar.containsKey("key");

  print("------------------------------");
  Hayvanlar.forEach((key, value) {
    print("key : $key  value : $value");
  });
  print("-----------------------------");
  Hayvanlar.update("fil", (value) => "Kocamandır.");
  Hayvanlar.forEach((key, value) {
    print("key : $key  value : $value");
  });
  print("-----------------------------");

  Hayvanlar.remove("köpek");

  Hayvanlar.forEach((key, value) {
    print("key : $key  value : $value");
  });
  print("-----------------------------");
  Hayvanlar.clear();

  Hayvanlar.forEach((key, value) {
    print("key : $key  value : $value");
  });
  print("----------------------------");

  
}


