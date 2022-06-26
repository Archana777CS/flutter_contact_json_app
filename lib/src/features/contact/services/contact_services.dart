
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:jsonexample/src/features/contact/model/contact_model.dart';

class ContactServices {
  Future<String> loadRecordsJosnFile() async {
    String data = await rootBundle.loadString("assets/data/records.json");
    return data;
  }



 Future<List<ContactModel>> getData() async {
    String rowJson = await loadRecordsJosnFile();
    List<dynamic> decodedData = jsonDecode(rowJson);
    List<ContactModel> contactListModel = decodedData.map((e) => ContactModel.fromJson(e)).toList();
    return contactListModel;
  }
}