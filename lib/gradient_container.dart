import 'package:flutter/material.dart';
import 'package:roll_dice/styled_text.dart';

var ortala =
    Alignment.bottomCenter; // değişken türü belliyse var yerine değişken türü
//olarak atayabilirsin

Alignment?
    ortala2; //soru işareti koyarak değerin sonradan atanacağını belirttim

class GradientContainer extends StatelessWidget {
  GradientContainer(this.colors, {super.key});
  final List<Color> colors;
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: colors, begin: ortala)),
      child: Center(child: StyledText("hello Dünnya")),
    );
  }
}
