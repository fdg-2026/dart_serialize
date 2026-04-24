import 'dart:convert';
import 'dart:io';
import 'employee_robust.dart';

void main() async {
  final employee = Employee("gs123");
  employee.name = "GS retired";
  employee.hoursPerWeek = 10;
  employee.salary = 0;
  employee.languages = ["C#", "Dart"];

  var map = employee.toJson();
  var jsonString1 = jsonEncode(map);
  print(jsonString1);

  var encoder = const JsonEncoder.withIndent('  ');
  var jsonString = encoder.convert(map);
  print(jsonString);

  final file = File('test.json');
  await file.writeAsString(jsonString);
  print('Saved to file.');

  String readFromFile = await file.readAsString();
  print(readFromFile);

  try {
    final Map<String, dynamic> readMap = jsonDecode(readFromFile);
    final created = Employee.fromJson(readMap);

    print(
      "created employee: id: ${created.id}, name: ${created.name},\n"
      "salary: ${created.salary}, hoursPerWeek: ${created.hoursPerWeek},\n"
      "languages: ${created.languages}",
    );
  } on Exception catch (e) {
    print("$e");
  }
}
