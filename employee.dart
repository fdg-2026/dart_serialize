class Employee {
  Employee(this.id);
  String id;
  String name = "unknown";
  double hoursPerWeek = 40;
  double salary = 4000;

  // Object -> Map
  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "hoursPerWeek": hoursPerWeek,
      "salary": salary,
    };
  }

  // Map -> Object
  factory Employee.fromJson(Map<String, dynamic> json) {
    if (json["id"] == null) {
      throw Exception("no field 'id' found in $json");
    }
    var result = Employee(json["id"]);
    result.name = json['name'];
    result.hoursPerWeek = json['hoursPerWeek'];
    result.salary = json['salary'];
    return result;
  }
}
