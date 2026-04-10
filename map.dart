import 'employee.dart';

void main() {
  var fritz = Employee("1234");
  fritz.name = "Fritz Fischer";
  fritz.hoursPerWeek = 35;
  fritz.salary = 3500;

  var karin = Employee("2323");
  karin.name = "Karin Schmitt";
  karin.hoursPerWeek = 20;
  karin.salary = 2500;

  Map<String, Employee> employees = {};
  employees["1234"] = fritz;
  employees[karin.id] = karin;

  for (var entry in employees.entries) {
    print("${entry.key} ${entry.value.name}");
  }
  employees.remove("2323");
  print(employees.length);
  for (var key in employees.keys) {
    print("$key ${employees[key]!.name}");
  }

  var id = "xyz";
  var employee = employees[id];
  if (employee == null) {
    print("no employee with id=$id");
  }
}
