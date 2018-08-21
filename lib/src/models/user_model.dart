
class UserModel {

  int id;
  String name;
  String username;
  String email;
  String phone;
  String website;
  AddressModel address;
  CompanyModel company;

  UserModel(
      this.id,
      this.name,
      this.username,
      this.email,
      this.phone,
      this.website,
      this.address,
      this.company
      );

  UserModel.fromJson(Map<String, dynamic> parsedJson) {
    id = parsedJson['id'];
    name = parsedJson['name'];
    username = parsedJson['username'];
    email = parsedJson['email'];
    phone = parsedJson['phone'];
    website = parsedJson['website'];
    address = AddressModel.fromJson(parsedJson['address']);
    company = CompanyModel.fromJson(parsedJson['company']);
  }

}

class AddressModel {

  String street;
  String suite;
  String city;
  String zipcode;
  GeocodeModel geo;

  AddressModel(this.street, this.suite, this.city, this.zipcode, this.geo);

  AddressModel.fromJson(Map<String, dynamic> parsedJson) {
    street = parsedJson['street'];
    suite = parsedJson['suite'];
    city = parsedJson['city'];
    zipcode = parsedJson['zipcode'];
    geo = GeocodeModel.fromJson(parsedJson['geo']);
  }

}

class GeocodeModel {

  String lat;
  String lng;

  GeocodeModel(this.lat, this.lng);

  GeocodeModel.fromJson(Map<String, dynamic> parsedJson) {
    lat = parsedJson['lat'];
    lng = parsedJson['lng'];
  }

}

class CompanyModel {

  String name;
  String catchPhrase;
  String bs;

  CompanyModel(this.name, this.catchPhrase, this.bs);

  CompanyModel.fromJson(Map<String, dynamic> parsedJson) {
    name = parsedJson['name'];
    catchPhrase = parsedJson['catchPhrase'];
    bs = parsedJson['bs'];
  }

}