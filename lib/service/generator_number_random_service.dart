import 'dart:math';

class GeneratorNumberRandomService {
  var generatedNumber = 0;

  static int generateRandomNumber(int numbermax) {
    Random numberRandon = Random();
    return numberRandon.nextInt(numbermax);
  }
}
