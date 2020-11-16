part of 'models.dart';

class User extends Equatable {
  final int id;
  final String name;
  final String email;
  final String address;
  final String houseNumber;
  final String phoneNumber;
  final String city;
  final String picturePath;

  User({
    this.id,
    this.name,
    this.email,
    this.address,
    this.houseNumber,
    this.phoneNumber,
    this.city,
    this.picturePath,
  });

  @override
  List<Object> get props => [
        id,
        name,
        email,
        address,
        houseNumber,
        phoneNumber,
        city,
        picturePath,
      ];
}

User mockUser = User(
  id: 1,
  name: 'Nur Muhaidi',
  address: 'Ngasem Batealit jepara',
  city: 'Jepara',
  houseNumber: '1234',
  phoneNumber: '089618367556',
  email: 'nurmuhaidi@gmail.com',
  picturePath: 'assets/image/avatar.png',
);
