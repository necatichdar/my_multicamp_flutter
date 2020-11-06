void main() {
// var
// final  //Degistirilemez
// const
// const'un degeri programi calismadan once belli olmali, calisirken degismez.

// dynamic : herhangi tip vermezsek dynamic olarak calisir. Herhangi bisey olabilir demektir.
// final myList = [];

// Degiskenler
//   int : Tam Sayi
//   double : Noktali Sayilar
//   String : Text icin
//   bool : true veya false

//Fonksiyon

  // DonenVeriTipi metodAdi(GonderilenDeger) {
  //   fonksiyon bilgisi
  // }

  // String getName(String name) {
  //   return name;
  // }

//Fonskiyon Cagirma
  final gelenCevap = getName();
  print(gelenCevap); //Necati

//Class Cagirma
  // final meslek = Meslek();
  final meslek = Meslek('Necati Cuhadar'); // Construct
  final title = meslek.getTitle();
  print(title); // Software Developer

//Global Fonksiyon
  final globalFonk = getName();
  print(globalFonk); // Necati

// Vehicle Classi Icin:
  final vehicles = <Vehicle>[
    Vehicle.car(),
    Vehicle.motorcycle(),
  ];

//forEach = Koleksiyondaki her degeri dolasiyor
  vehicles.forEach((vehicle) {
    print(vehicle.model);
  });

//map kullanimi
//vehicleModels altinda vehicles teki moddeleri bir listye attık. .toList() liste olusturmasini sagladi.
  final vehicleModels = vehicles.map((vehicle) {
    return vehicle.model;
  }).toList();

//Map Example
  final mapExample = <int, String>{
    1992: 'August',
    1991: 'Jaunary',
  };
  final necati1 = mapExample[1992];
  print(necati1);

  final yearModelMap = vehicles.map((vehicle) {
    // return <int, String>{vehicle.year: vehicle.model};
    return Cars();
  });

  print(yearModelMap.runtimeType);

//set = Ayni verileri otomatik olarak kaldiriyor.
  final name = "Necati";
  final setExample = {name, name, name, name};
  print(setExample.length); //1

// For dongusu
  final example = <String>['Necati', 'Cuhadar', 'Polati', 'Ankara'];
  //example'daki her degeri name'e atiyoruz ve islem yapiyoruz.
  for (final name in example) {
    print(name);
  }

  for (var i = 0; i < example.length; i++) {
    print(example[i]);
  }
// 100tane degeri var her birini dondur.
  final hundred = List.generate(100, (index) => index);

  for (var i = 0; i < hundred.length; i++) {
    if (hundred[i].isEven) {
      // Sadece Cift Degerleri Yazar
      print(hundred[i]);
    }
  }

  int index = 0;
  while (index < hundred.length) {
    if (hundred[index].isEven) {
      // Sadece Cift Degerleri Yazar
      print(hundred[index]);
    }
    index++;
  }
}

class Cars {}

//Class Olusturma
class Meslek {
// this = Bu siniftan bahseder. Class icindeki objeleri ifade eder.

// Constructer
//{} arasina yazarsak isimlendirilmis sekilde parametre girmemiz gerekir
//[] arasina yazarsak deger girilmesede Constructer yazilir.
  Meslek(this.jobTitle);
  String
      jobTitle; // 1 kere atayinca degistirilebilir halde oldugunu istemiyoruz.

// Name Constructer
  Meslek.polis(this.jobTitle) {
    jobTitle = 'Cuhadar';
  }

// factory = Belli bir ozel duruma bagli deger geldiginde ona bagli obje olusturmak istiyorsak bunu kullaniyoruz.
  factory Meslek.doctor() {
    return Meslek('Doktor');
  }

  factory Meslek.developer() {
    return Meslek('Doktor');
  }

  String getTitle() {
    return 'Software Developer';
  }
}

String getName() {
  return 'Necati';
}

class Vehicle {
  Vehicle(this.year, this.model);

  factory Vehicle.car() {
    return Vehicle(2012, 'Honda C-HR');
  }
  factory Vehicle.motorcycle() {
    return Vehicle(2000, 'Harley Davidson Sportstrer');
  }

  final int year;
  final String model;
}
