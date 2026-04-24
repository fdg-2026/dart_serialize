class Employee {
  Employee(this.id);
  String id;
  String name = "unknown";
  double hoursPerWeek = 40;
  double salary = 4000;
  List<String> languages = [];

  // Object -> Map
  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "hoursPerWeek": hoursPerWeek,
      "salary": salary,
      "languages": languages,
    };
  }

  // Map -> Object
  factory Employee.fromJson(Map<String, dynamic> json) {
    if (!(json["id"] is String)) {
      throw Exception("no field 'id' found in $json");
    }
    var result = Employee(json["id"]);
    if ((json["name"] is String)) {
      result.name = json['name'];
    }
    if ((json["hoursPerWeek"] is num)) {
      result.hoursPerWeek = json['hoursPerWeek'].toDouble();
    }
    if ((json["salary"] is num)) {
      result.salary = json['salary'].toDouble();
    }
    print(json['languages'].runtimeType); // List<dynamic>
    if ((json["languages"] is List<dynamic>)) {
      for (var elem in json["languages"]) {
        if (elem is String) {
          result.languages.add(elem);
        }
      }
    }
    return result;
  }
}
