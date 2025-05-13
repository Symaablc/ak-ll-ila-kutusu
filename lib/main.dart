import 'package:flutter/material.dart';

//import 'anaekran.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => GirisEkrani(),
        "/KullaniciSayfasiRotasi": (context) => KullaniciEkrani(),
        "/AdminSayfasiRotasi": (context) => AdminEkrani(),
      },
    );
  }
}

class GirisEkrani extends StatefulWidget {
  const GirisEkrani({super.key});

  @override
  State<GirisEkrani> createState() => _GirisEkraniState();
}

class _GirisEkraniState extends State<GirisEkrani> {
  kulGiris() {
    Navigator.pushNamed(context, "/KullaniciSayfasiRotasi");
    Navigator.pushNamed(context, "/AdminSayfasiRotasi");
  }

  adGiris() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Giriş Ekrani")),
      body: Container(
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: kulGiris,
                child: Text("Kullanici Girisi"),
              ),
              ElevatedButton(onPressed: adGiris, child: Text("Admin Girisi")),
            ],
          ),
        ),
      ),
    );
  }
} //Profik ekran Sayfası

class KullaniciEkrani extends StatefulWidget {
  const KullaniciEkrani({super.key});

  @override
  State<KullaniciEkrani> createState() => _KullaniciEkraniState();
}

class _KullaniciEkraniState extends State<KullaniciEkrani> {
  cikisYap() {
    Navigator.pushNamed(context, "/");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Kullanici Sayfasi")),
      body: Container(
        child: Column(
          children: [
            ElevatedButton(onPressed: cikisYap, child: Text("Çikiş yap")),
          ],
        ),
      ),
    );
  }
}

class AdminEkrani extends StatefulWidget {
  const AdminEkrani({super.key});

  @override
  State<AdminEkrani> createState() => _AdminEkraniState();
}

class _AdminEkraniState extends State<AdminEkrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Admin sayfasi")));
  }
}

//class MyApp extends StatefulWidget {
// const MyApp({super.key});

@override
//State<MyApp> createState() => _MyAppState();
//}
//class _MyAppState extends State<MyApp> {
@override
//Widget build(BuildContext context) {
// return MaterialApp(
// title: "Akıllı İlaç Kutusu Uygulaması",
//home: Iskele(),
//); //çatı
//}
//}
//class Iskele extends StatelessWidget {
//  const Iskele({super.key});
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: Text("Akıllı İlaç Kutusu")),

    //      body: AnaEkran(),
  ); //alt ayakları iskele
}

//}
