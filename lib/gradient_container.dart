import 'package:flutter/material.dart';
import 'package:roll_app/dice_roller.dart';

// import 'package:roll_app/style_text.dart'; // resim eklendiği için text style ile işimiz kalmadı

const startAlignment = Alignment.topLeft; // var yerine const ile tanımlarsak aşağıda box decoration önüne const gelir ve
const endAlignment = Alignment.bottomRight; // colors önündeki const değeri kaldırılabilir !!

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1 , this.color2 , {super.key}); // burada {} içinde named olarak da tanımlayabilirdik orası farklı bir bölüm

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration( // buradaki const değişimi yukarıdaki değer tanımlama aşamasıyla ilgilidir
        gradient: LinearGradient(
          colors: [color1,color2],  // buradaki const değişimi yukarıdaki değer tanımlama aşamasıyla ilgilidir
          begin: startAlignment,
          end: endAlignment
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
