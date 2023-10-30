import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});
  
  @override
  State<DiceRoller> createState(){
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller>{
  var currentDiceRoll = 6;

  void rollDice(){
    setState(() {           // bu column kısmının tekrar çağrılmasını ve görüntünün değişmesini sağlar
      currentDiceRoll = randomizer.nextInt(6)+1;
    });
  }


  @override
  Widget build(context) {
                   // yatay da yan yana getirmek için row kullanılır
    return Column( // dikeyde üst üste eleman getirmek için column kullanılır
          mainAxisSize: MainAxisSize.min, // uygulama en yukarıdaydı bunu yazınca ortaladı
          children: [                     // bir de mainaxissize.max var o da yukarıya alıyor mevzuyu sonra çözersin      
            Image.asset(
              'assets/images/dice-$currentDiceRoll.png',
              width: 200,
            ),

            const SizedBox(height: 40), // üst kısma bir kutu ekler gibi düşün margin top mesela
            ElevatedButton(
              onPressed: rollDice,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                padding: const EdgeInsets.all(10), // elevatedbutton yerine textbutton olsaydı padding margin gibi olurdu
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 28
                )
              ),
              child: const Text('Roll Dice'),
            )
          ],
        );
  }
}