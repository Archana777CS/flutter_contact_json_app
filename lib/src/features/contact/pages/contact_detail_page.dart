import 'package:flutter/material.dart';
import 'package:jsonexample/src/features/contact/model/contact_model.dart';
import 'package:jsonexample/src/utils/link_open.dart';
import 'package:jsonexample/src/utils/utility_launcher.dart';

class ContactDetailPage extends StatefulWidget {
  final ContactModel contacts;
  const ContactDetailPage({required this.contacts, Key? key}) : super(key: key);
  @override
  State<ContactDetailPage> createState() => _ContactDetailPageState();
}

class _ContactDetailPageState extends State<ContactDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.contacts.name),
      ),
      body: Center(
        child: Column(
          children: [
            Image.network(widget.contacts.photo),
            Text(
              widget.contacts.name,
              style: const TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              widget.contacts.address,
              style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            ListTile(
              onTap: () {
                LauncherUtility.makeCall(widget.contacts.contact);
              },
              title: Text(
                widget.contacts.contact,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.green,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            ListTile(
              title: Text(
                widget.contacts.website,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 15,
                    color: Colors.blue,
                    fontWeight: FontWeight.w200),
              ),
              onTap: () {
                LinkOpen.openLink(widget.contacts.website);
              },
            ),
          ],
        ),
      ),
    );
  }
}
