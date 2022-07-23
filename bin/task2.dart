import 'dart:io';

void main(List<String> arguments) {
  int score = 0;
  Map<dynamic, dynamic> m = {
    1: [
      "A",
      "E",
      "I",
      "O",
      "U",
      "L",
      "N",
      "R",
      "S",
      "T",
      "a",
      "e",
      "i",
      "o",
      "u",
      "l",
      "n",
      "r",
      "s",
      "t"
    ],
    2: ["D", "G", "d", "g"],
    3: ["B", "C", "M", "P", "b", "c", "m", "p"],
    4: ["F", "H", "V", "W", "Y", "f", "h", "v", "w", "y"],
    5: ["K", "k"],
    8: ["J", "X", "j", "x"],
    10: ["Q", "Z", "q", "z"]
  };
  print("Enter your word to count your score :");
  String x = stdin.readLineSync()!;
  List<String> l = x.split("");
  print("The letters of word :");
  print(l);
  int score_word(String x) {
    for (int i = 0; i < l.length; i++) {
      for (int j = 0; j < m[1].length; j++) {
        if (l[i] == m[1][j]) {
          score++;
        }
      }
      for (int j = 0; j < m[2].length; j++) {
        if (l[i] == m[2][j]) {
          score = score + 2;
        }
      }
      for (int j = 0; j < m[3].length; j++) {
        if (l[i] == m[3][j]) {
          score = score + 3;
        }
      }
      for (int j = 0; j < m[4].length; j++) {
        if (l[i] == m[4][j]) {
          score = score + 4;
        }
      }
      for (int j = 0; j < m[5].length; j++) {
        if (l[i] == m[5][j]) {
          score = score + 5;
        }
      }
      for (int j = 0; j < m[8].length; j++) {
        if (l[i] == m[8][j]) {
          score = score + 8;
        }
      }
      for (int j = 0; j < m[10].length; j++) {
        if (l[i] == m[10][j]) {
          score = score + 10;
        }
      }
    }
    return score;
  }

  print("The score of your word : ");
  print(score_word(x));
}
