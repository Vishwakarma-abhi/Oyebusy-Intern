class UserModel {
  String name;
  String age;
  String phone;

  UserModel({this.name, this.phone, this.age});

  UserModel.fromMap(Map<String, dynamic> snapshot) :
      name = snapshot['name'],
    age = snapshot['age'],
        phone = snapshot['phone'];

}