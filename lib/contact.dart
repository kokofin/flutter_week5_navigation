// import 'package:flutter/material.dart';
// import 'create_contact.dart';

// class Contact {
//   final String name;
//   final String phoneNumber;

//   Contact({required this.name, required this.phoneNumber});
// }

// class ContactPage extends StatefulWidget {
//   const ContactPage({super.key});

//   @override
//   ContactPageState createState() => ContactPageState();
// }

// class ContactPageState extends State<ContactPage> {
//   List<Contact> contacts = [
//     Contact(name: "Adul", phoneNumber: "0876565559"),
//     Contact(name: "Udin", phoneNumber: "0865544555"),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Contacts"),
//       ),
//       body: ListView.builder(
//         itemCount: contacts.length,
//         itemBuilder: (BuildContext context, int index) {
//           Contact contact = contacts[index];
//           return ListTile(
//             title: Text(contact.name),
//             subtitle: Text(contact.phoneNumber),
//           );
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () async {
//           final result = await Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => const CreateContactPage()),
//           );
//           if (result != null) {
//             setState(() {
//               contacts.add(result);
//             });
//           }
//     },
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'create_contact.dart';

class Contact {
  final String name;
  final String phoneNumber;

  Contact({required this.name, required this.phoneNumber});
}

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  ContactPageState createState() => ContactPageState();
}

class ContactPageState extends State<ContactPage> {
  List<Contact> contacts = [
    Contact(name: "Adul", phoneNumber: "0876565559"),
    Contact(name: "Udin", phoneNumber: "0865544555"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contacts"),
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (BuildContext context, int index) {
          Contact contact = contacts[index];
          return ListTile(
            title: Text(contact.name),
            subtitle: Text(contact.phoneNumber),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const CreateContactPage()),
          );
          if (result != null) {
            setState(() {
              contacts.add(result);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Kontak Berhasil di tambahkan'),
                  
                ),
              );
            });
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}


