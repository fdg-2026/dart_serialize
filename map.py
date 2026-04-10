from employee import Employee



fritz = Employee("1234")
fritz.name = "Fritz Fischer"
fritz.hoursPerWeek = 35
fritz.salary = 3500

karin = Employee("2323")
karin.name = "Karin Schmitt"
karin.hoursPerWeek = 20
karin.salary = 2500

employees = {}
employees["1234"] = fritz
employees[karin.id] = karin

for key, value in employees.items():
    print(f"{key} {value.name}")
# next line without None: exception if key does not exist
employees.pop("2xxx",None)
print(len(employees))
for key in employees:
    print(f"{key} {employees[key].name}")

id = "xyz"
#employee = employees[id]
employee = employees.get(id)
if (employee is None):
    print(f"no employee with id={id}")

