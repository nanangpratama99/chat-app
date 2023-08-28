class UserProfileModel {
  String name;
  String image;
  String message;
  String lastSent;
  bool isFavouriteContact = false;

  UserProfileModel({
    required this.name,
    required this.image,
    required this.message,
    required this.lastSent,
    required this.isFavouriteContact,
  });
}

List<UserProfileModel> userProfileData = [
  UserProfileModel(
    name: 'Ambar',
    image: 'assets/images/1.jpeg',
    message: 'lorem ipsum dolor ...',
    lastSent: '8',
    isFavouriteContact: true,
  ),
  UserProfileModel(
    name: 'Leo',
    image: 'assets/images/2.jpeg',
    message: 'lorem ipsum dolor ...',
    lastSent: '3',
    isFavouriteContact: true,
  ),
  UserProfileModel(
    name: 'Reni',
    image: 'assets/images/3.jpeg',
    message: 'lorem ipsum dolor ...',
    lastSent: '1',
    isFavouriteContact: true,
  ),
  UserProfileModel(
    name: 'Adi',
    image: 'assets/images/4.jpeg',
    message: 'lorem ipsum dolor ...',
    lastSent: '2',
    isFavouriteContact: true,
  ),
  UserProfileModel(
    name: 'Deni',
    image: 'assets/images/5.jpeg',
    message: 'lorem ipsum dolor ...',
    lastSent: '1',
    isFavouriteContact: false,
  ),
  UserProfileModel(
    name: 'Deni',
    image: 'assets/images/5.jpeg',
    message: 'lorem ipsum dolor ...',
    lastSent: '1',
    isFavouriteContact: false,
  ),
  UserProfileModel(
    name: 'Deni',
    image: 'assets/images/5.jpeg',
    message: 'lorem ipsum dolor ...',
    lastSent: '1',
    isFavouriteContact: false,
  ),
  UserProfileModel(
    name: 'Deni',
    image: 'assets/images/5.jpeg',
    message: 'lorem ipsum dolor ...',
    lastSent: '1',
    isFavouriteContact: false,
  ),
  UserProfileModel(
    name: 'Deni',
    image: 'assets/images/5.jpeg',
    message: 'lorem ipsum dolor ...',
    lastSent: '1',
    isFavouriteContact: false,
  ),
  UserProfileModel(
    name: 'Deni',
    image: 'assets/images/5.jpeg',
    message: 'lorem ipsum dolor ...',
    lastSent: '1',
    isFavouriteContact: false,
  ),
];
