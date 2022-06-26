import 'package:flutter/material.dart';
import 'package:jsonexample/src/features/contact/model/contact_model.dart';
import 'package:jsonexample/src/features/contact/pages/contact_detail_page.dart';
import 'package:jsonexample/src/features/contact/services/contact_services.dart';
import 'contact_detail_page.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  List<ContactModel> contactmodel = [];
  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact App"),
      ),
      body: SafeArea(
        child: ListView.builder(
            itemCount: contactmodel.length,
            itemBuilder: (context, pos) {
              ContactModel contacts= contactmodel[pos] ;
              return ListTile(

                leading: CircleAvatar(
                    backgroundImage: NetworkImage(contacts.photo)
                ),
                onTap:(){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ContactDetailPage(contacts: contacts)));
                },
                title:Text(contacts.name) ,
                subtitle:Text(contacts.contact),
              );
            }),
      ),
    );
  }

  Future<void> getData() async {
    ContactServices contactServices = ContactServices();
    List<ContactModel> contactModelTemp = await contactServices.getData();
    setState(() {
      contactmodel = contactModelTemp;
    });



  }
}