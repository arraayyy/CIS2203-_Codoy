// Create a program that would simulate a phonebook. A phonebook contains a list of contacts, each contact has the following details: firstname, last name, phone number, address
// The program should be able to add a contact, delete a contact, search for a contact, update a contact, list all contacts, and exit the program.
// using List manipulation

import 'dart:io';

void main() {
  // populate 5 list of contacts
  List contacts = [];
  bool isRunning = true;

  {
    contacts.add({
      'firstname': 'John',
      'lastname': 'Doe',
      'phone': '1234567890',
      'address': '123 Main St'
    });
    contacts.add({
      'firstname': 'Jane',
      'lastname': 'Doe',
      'phone': '0987654321',
      'address': '456 Main St'
    });
    contacts.add({
      'firstname': 'Roe',
      'lastname': 'Codoy',
      'phone': '1234567890',
      'address': '123 Main St'
    });
    contacts.add({
      'firstname': 'Ann',
      'lastname': 'Codz',
      'phone': '0987654321',
      'address': '456 Main St'
    });
    contacts.add({
      'firstname': 'Kim',
      'lastname': 'Cody',
      'phone': '1234567890',
      'address': '123 Main St'
    });
  }

  print(contacts);

  while (isRunning) {
    print('''
    1. Add Contact
    2. Delete Contact
    3. Update Contact
    4. List All Contacts
    5. Exit
    ''');

    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        addContact(contacts);
        break;

      case '2':
        deleteContact(contacts);
        break;

      case '3':
        searchContact(contacts);
        break;

      case '4':
        printAllContacts(contacts);
        break;

      case '5':
        isRunning = false;
        break;

      default:
        print('Invalid choice');
    }
  }
}

void addContact(List contacts) {
  print('Enter Firstname: ');
  String? firstname = stdin.readLineSync();
  print('Enter Lastname: ');
  String? lastname = stdin.readLineSync();
  print('Enter Phone: ');
  String? phone = stdin.readLineSync();
  print('Enter Address: ');
  String? address = stdin.readLineSync();

  contacts.add({
    'firstname': firstname,
    'lastname': lastname,
    'phone': phone,
    'address': address
  });

  print('Contact Added!');
  print('\n\n');
  print(contacts);
}

void deleteContact(List contacts) {
  print('Enter Firstname: ');
  String? firstname = stdin.readLineSync();
  print('Enter Lastname: ');
  String? lastname = stdin.readLineSync();

  for (var i = 0; i < contacts.length; i++) {
    if (contacts[i]['firstname'] == firstname &&
        contacts[i]['lastname'] == lastname) {
      contacts.removeAt(i);
      print('Contact Deleted!');
    }
  }
}

void searchContact(List contacts) {
  print("Enter Firstname:");
  String? firstname = stdin.readLineSync();
  print("Enter LastName:");
  String? lastname = stdin.readLineSync();

  for (var i = 0; i < contacts.length; i++) {
    if (contacts[i]['firstname'] == firstname &&
        contacts[i]['lastname'] == lastname) {
      print(contacts[i]);
    }
  }
}

void printAllContacts(List contacts) {
  for (var i = 0; i < contacts.length; i++) {
    print(contacts[i]);
  }
}
