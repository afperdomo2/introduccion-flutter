import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

// StatefulWidget: Clase que permite la creación de widgets que pueden cambiar a lo largo del tiempo.
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Person> people = [
    Person("John", "Doe", "+504 9876-5432"),
    Person("Jane", "Doe", "+504 5432-9876"),
    Person("Alice", "Smith", "+504 1234-5678"),
    Person("Bob", "Smith", "+504 5678-1234"),
    Person("Charlie", "Brown", "+504 8765-4321"),
    Person("Daisy", "Johnson", "+504 4321-8765"),
  ];

  // @override: Indica que el método anulado debe anular un método de su clase principal.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Flutter App'),
          ),
          body: ListView.builder(
            itemCount: people.length,
            itemBuilder: (context, index) {
              return ListTile(
                onTap: () {
                  print("---> Selected ${people[index].name}");
                },
                onLongPress: () {
                  showDeletePersonAlert(context, people[index], () {
                    setState(() {
                      people.removeAt(index);
                    });
                  });
                },
                title: Text("${people[index].name} ${people[index].lastName}"),
                subtitle: Text(people[index].phone),
                leading: CircleAvatar(
                  child: Text(people[index].name[0]),
                ),
                trailing: const Icon(Icons.arrow_forward_ios),
              );
            },
          )),
    );
  }
}

class Person {
  String name;
  String lastName;
  String phone;

  Person(this.name, this.lastName, this.phone);
}

showDeletePersonAlert(
    BuildContext context, Person person, Function deletePerson) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: const Text("Delete Person"),
        content: Text(
            "Are you sure you want to delete ${person.name} ${person.lastName}?"),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text("Cancel"),
          ),
          TextButton(
            onPressed: () {
              // setState: Función que actualiza el estado del widget
              deletePerson();
              Navigator.of(context).pop();
            },
            child: const Text("Delete"),
          ),
        ],
      );
    },
  );
}
