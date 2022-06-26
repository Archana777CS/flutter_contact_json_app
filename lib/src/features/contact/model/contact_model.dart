class ContactModel {
  String name;
  String address;
  String contact;
  String website;
  String photo;

  ContactModel(
      {required this.name,
        required this.address,
        required this.contact,
        required this.website,
        required this.photo});

  factory ContactModel.fromJson(Map<String,dynamic> json){
    ContactModel contactModel = ContactModel(name: json["name"],
                                          address: json["address"],
                                          contact: json["contact"],
                                          website: json["url"],
                                            photo: json["photo"]);
    return contactModel;
  }
}