Activity Title: "The Lost Temple of Dart"

Name: Registration Number: 221007079

Scenario:
You're an explorer navigating a mysterious temple filled with traps, puzzles, and treasures. Each room in the temple requires solving Dart-based challenges to progress. Your goal is to collect 3 golden relics (treasures) before your health reaches 0. The temple has 6 unique rooms, and you can only visit each room once.

Learning Objectives:

Practice variables, data types, and operators.
Use conditional statements (if, else if, switch).
Work with loops (while, for).
Manipulate lists and strings.
Handle user input/output.
Rules:

No functions, classes, or asynchronous code allowed.
Health starts at 100. Losing a challenge deducts health.
Collect 3 relics to win.
Maximum 6 moves (1 move = entering a room).
Challenge Structure:

Room Navigation (using loops and user input):

Use a while loop to let the player move between rooms until they win/lose.
Track visited rooms with a List<int> (e.g., [1, 3, 2]).
Use stdin.readLineSync() for input (import dart:io).
Room Challenges (examples):

Room of Echoes: Solve a riddle using string manipulation (e.g., reverse a string).
Pit of Arithmetic: Calculate the correct answer to a math trap (e.g., (5 * 4) ~/ 2).
Mirror Chamber: Compare a List<int> to its reversed version.
Treasure Vault: Use boolean logic to unlock the relic (e.g., isLocked && hasKey).
Tasks for the Learner:

Complete the todos provided in the main.dart code skeleton.
Ensure health and relics are updated correctly.
