import 'package:flutter/material.dart';

import 'package:roll_app/gradient_container.dart';

// Eğer ide de bu kodlar çalışmaz ise yukarıdaki kısayol çubuğundan yenileye veya yıldırım simgesine tıkla.
void main() {
  // Kod altında mavi dalga gördüğünde const eklemen gerekir.
  runApp(
    const MaterialApp( // resim eklendiğinde buradaki const kalktı // DiceRoller() dan sonra geri geldi const
      home: Scaffold(
        body: GradientContainer(
            Color.fromARGB(255, 26, 2, 150),
            Color.fromARGB(255, 26, 2, 250)
        ),
      ),
    ),
  ); // const eklemek uygulamayı daha performanslı çalıştırır.
}
