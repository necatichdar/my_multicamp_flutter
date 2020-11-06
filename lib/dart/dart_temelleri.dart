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
}

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
