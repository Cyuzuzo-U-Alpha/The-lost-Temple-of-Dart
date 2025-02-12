import 'dart:io';

void main() {
  int health = 100, relicsFound = 0;
  List<int> visitedRooms = [];
  bool isAlive = true, hasKey = false;

  print(
      ' Welcome to the Lost Temple of Dart! \nFind 3 relics before health reaches 0.\n');

  while (isAlive && relicsFound < 3 && visitedRooms.length < 6) {
    print(
        '\n Health: $health |  Relics: $relicsFound |  Rooms visited: $visitedRooms');
    print('Choose a room (1-6):');

    int? room = int.tryParse(stdin.readLineSync() ?? '');
    if (room == null || room < 1 || room > 6 || visitedRooms.contains(room)) {
      print(' Invalid or visited room. Try again.');
      continue;
    }
    visitedRooms.add(room);

    switch (room) {
      case 1:
        print(' Room of Echoes: Reverse "dart" to pass.');
        relicsFound += (stdin.readLineSync()?.toLowerCase() == "trad")
            ? 1
            : (health -= 20) * 0;
        break;

      case 2:
        print(' Pit of Arithmetic: Solve (12 ~/ 4) * 3 + 5');
        relicsFound += (int.tryParse(stdin.readLineSync() ?? '') == 14)
            ? 1
            : (health -= 30) * 0;
        hasKey = relicsFound > 0;
        break;

      case 3:
        print(' Mirror Chamber: Sum of [5,4,3,2,1]?');
        relicsFound += (int.tryParse(stdin.readLineSync() ?? '') == 15)
            ? 1
            : (health -= 25) * 0;
        break;

      case 4:
        print(' Gate of Logic: You need a key & 1 relic. (yes/no)');
        relicsFound += (stdin.readLineSync()?.toLowerCase() == "yes" && hasKey)
            ? 1
            : (health -= 25) * 0;
        break;

      case 5:
        print(' Stone Altar: Convert "DART" to lowercase + "123"');
        relicsFound +=
            (stdin.readLineSync() == "dart123") ? 1 : (health -= 20) * 0;
        break;

      case 6:
        print(' Final Chamber: Solve (20 % 3) * (4 ~/ 2) + 6');
        relicsFound += (int.tryParse(stdin.readLineSync() ?? '') == 8)
            ? 1
            : (health -= 30) * 0;
        break;
    }

    print(" Health: $health |  Relics: $relicsFound");
    isAlive = health > 0;
  }

  print(relicsFound >= 3
      ? "\n You escaped with $relicsFound relics! Victory!"
      : "\n Game Over!");
}
