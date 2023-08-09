class UserModel {
  int? id;
  String? firstName;
  String? lastName;
  String? maidenName;
  int? age;
  String? gender;
  String? email;
  String? phone;
  String? username;
  String? password;
  String? birthDate;
  String? image;
  String? bloodGroup;
  num? height;
  num? weight;
  String? eyeColor;
  Hair? hair;
  String? domain;
  String? ip;
  Address? address;
  String? macAddress;
  String? university;
  Bank? bank;
  Company? company;
  String? ein;
  String? ssn;
  String? userAgent;

  UserModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.maidenName,
    required this.age,
    required this.gender,
    required this.email,
    required this.phone,
    required this.username,
    required this.password,
    required this.birthDate,
    required this.image,
    required this.bloodGroup,
    required this.height,
    required this.weight,
    required this.eyeColor,
    required this.hair,
    required this.domain,
    required this.ip,
    required this.address,
    required this.macAddress,
    required this.university,
    required this.bank,
    required this.company,
    required this.ein,
    required this.ssn,
    required this.userAgent,
  });

  factory UserModel.fromMap(Map<String, Object?> json) => UserModel(
        id: json['id'] as int?,
        firstName: json['firstName'] as String?,
        lastName: json['lastName'] as String?,
        maidenName: json['maidenName'] as String?,
        age: json['age'] as int?,
        gender: json['gender'] as String?,
        email: json['email'] as String?,
        phone: json['phone'] as String?,
        username: json['username'] as String?,
        password: json['password'] as String?,
        birthDate: json['birthDate'] as String?,
        image: json['image'] as String?,
        bloodGroup: json['bloodGroup'] as String?,
        height: json['height'] as num?,
        weight: json['weight'] as num?,
        eyeColor: json['eyeColor'] as String?,
        hair: Hair.fromJson(json['hair'] as Map<String, Object?>),
        domain: json['domain'] as String?,
        ip: json['ip'] as String?,
        address: Address.fromJson(json['address'] as Map<String, Object?>),
        macAddress: json['macAddress'] as String?,
        university: json['university'] as String?,
        bank: Bank.fromJson(json['bank'] as Map<String, Object?>),
        company: Company.fromJson(json['company'] as Map<String, Object?>),
        ein: json['ein'] as String?,
        ssn: json['ssn'] as String?,
        userAgent: json['userAgent'] as String?,
      );
}

class Hair {
  String? color;
  String? type;

  Hair({
    required this.color,
    required this.type,
  });

  factory Hair.fromJson(Map<String, Object?> json) {
    return Hair(
      color: json['color'] as String?,
      type: json['type'] as String?,
    );
  }
}

class Address {
  String? address;
  String? city;
  Coordinates? coordinates;
  String? postalCode;
  String? state;

  Address({
    required this.address,
    required this.city,
    required this.coordinates,
    required this.postalCode,
    required this.state,
  });

  factory Address.fromJson(Map<String, Object?> json) {
    return Address(
      address: json['address'] as String?,
      city: json['city'] as String?,
      coordinates:
          Coordinates.fromJson(json['coordinates'] as Map<String, Object?>),
      postalCode: json['postalCode'] as String?,
      state: json['state'] as String?,
    );
  }
}

class Bank {
  String? cardExpire;
  String? cardNumber;
  String? cardType;
  String? currency;
  String? iban;

  Bank({
    required this.cardExpire,
    required this.cardNumber,
    required this.cardType,
    required this.currency,
    required this.iban,
  });

  factory Bank.fromJson(Map<String, Object?> json) {
    return Bank(
      cardExpire: json['cardExpire'] as String?,
      cardNumber: json['cardNumber'] as String?,
      cardType: json['cardType'] as String?,
      currency: json['currency'] as String?,
      iban: json['iban'] as String?,
    );
  }
}

class Company {
  Address? address;
  String? department;
  String? name;
  String? title;

  Company({
    required this.address,
    required this.department,
    required this.name,
    required this.title,
  });

  factory Company.fromJson(Map<String, Object?> json) {
    return Company(
      address: Address.fromJson(json['address'] as Map<String, Object?>),
      department: json['department'] as String?,
      name: json['name'] as String?,
      title: json['title'] as String?,
    );
  }
}

class Coordinates {
  double? lat;
  double? lng;

  Coordinates({
    required this.lat,
    required this.lng,
  });

  factory Coordinates.fromJson(Map<String, Object?> json) {
    return Coordinates(
      lat: json['lat'] as double?,
      lng: json['lng'] as double?,
    );
  }
}
