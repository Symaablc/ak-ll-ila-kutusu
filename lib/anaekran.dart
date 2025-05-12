import 'package:flutter/material.dart';

class AnaEkran extends StatefulWidget {
  const AnaEkran({super.key});

  @override
  State<AnaEkran> createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {
  String blogyazisi = 'Uygulamaya Hoşgeldiniz';

  kullaniciGoster() {
    setState(() {
      blogyazisi = 'ilaç saatleri';
    });
  }

  AdminGoster() {
    setState(() {
      blogyazisi = 'İlaç girdileri:';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(blogyazisi),
            ElevatedButton(
              onPressed: kullaniciGoster,
              child: Text('Kullanici Giriş'),
            ),

            ElevatedButton(onPressed: AdminGoster, child: Text('Admin Giriş')),
          ],
        ),
      ),
    );
  }
}
