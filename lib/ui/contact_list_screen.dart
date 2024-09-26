import 'package:faker/faker.dart' as faker;
import 'package:flutter/material.dart';
import 'package:myapp/data/data.dart';

// ignore: must_be_immutable
class ContactListScreen extends StatefulWidget {
  const ContactListScreen({super.key});

  @override
  State<ContactListScreen> createStateommc() => _ContactListScreenState();
}

class _ContactListScreenState extends State<ContactListScreen> {
  late List<Contact> _contacts;

  //Runs when the widget is initilaized.
  @override
  void initState() {
    super.initState();

    _contacts = List.generate(
      50,
      (index) {
        final fakerInstance = faker.Faker(); // Create an instance of Faker
        return Contact(
          name:
              '${fakerInstance.person.firstName()} ${fakerInstance.person.lastName()}',
          email: fakerInstance.internet.email(),
          phoneNumber:
              fakerInstance.randomGenerator.integer(1000000).toString(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: const Text('Contact Screen'),
        ),
        body: ListView.builder(
          itemCount: _contacts.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                _contacts[index].name,
                style: const TextStyle(fontSize: 20),
              ),
              subtitle: Text(_contacts[index].email), // Optional: Display email
              trailing: Text(_contacts[index]
                  .phoneNumber), // Optional: Display phone number
            );
          },
        ),
      ),
    );
  }
}
