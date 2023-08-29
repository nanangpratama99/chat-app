class UserProfileModel {
  String name;
  String image;
  String message;
  String lastSent;
  bool isFavouriteContact = false;

  bool isActive = false;
  bool isSender = true;

  UserProfileModel(
      {required this.name,
      required this.image,
      required this.message,
      required this.lastSent,
      required this.isFavouriteContact,
      required this.isActive,
      required this.isSender});
}

List<UserProfileModel> userProfileData = [
  UserProfileModel(
    name: 'Ambar',
    image: 'assets/images/1.jpeg',
    message: 'lorem ipsum dolor ...',
    lastSent: '8',
    isFavouriteContact: true,
    isActive: true,
    isSender: true,
  ),
  UserProfileModel(
    name: 'Leo',
    image: 'assets/images/2.jpeg',
    message: 'lorem ipsum dolor ...',
    lastSent: '3',
    isFavouriteContact: true,
    isActive: false,
    isSender: true,
  ),
  UserProfileModel(
    name: 'Reni',
    image: 'assets/images/3.jpeg',
    message: 'lorem ipsum dolor ...',
    lastSent: '1',
    isFavouriteContact: true,
    isActive: true,
    isSender: true,
  ),
  UserProfileModel(
    name: 'Adi',
    image: 'assets/images/4.jpeg',
    message: 'lorem ipsum dolor ...',
    lastSent: '2',
    isFavouriteContact: true,
    isActive: false,
    isSender: true,
  ),
  UserProfileModel(
    name: 'Deni',
    image: 'assets/images/5.jpeg',
    message: 'lorem ipsum dolor ...',
    lastSent: '1',
    isFavouriteContact: false,
    isActive: false,
    isSender: true,
  ),
  UserProfileModel(
    name: 'Deni',
    image: 'assets/images/5.jpeg',
    message: 'lorem ipsum dolor ...',
    lastSent: '1',
    isFavouriteContact: false,
    isActive: false,
    isSender: true,
  ),
  UserProfileModel(
    name: 'Deni',
    image: 'assets/images/5.jpeg',
    message: 'lorem ipsum dolor ...',
    lastSent: '1',
    isFavouriteContact: false,
    isActive: false,
    isSender: true,
  ),
  UserProfileModel(
    name: 'Deni',
    image: 'assets/images/5.jpeg',
    message: 'lorem ipsum dolor ...',
    lastSent: '1',
    isFavouriteContact: false,
    isActive: false,
    isSender: true,
  ),
  UserProfileModel(
    name: 'Deni',
    image: 'assets/images/5.jpeg',
    message: 'lorem ipsum dolor ...',
    lastSent: '1',
    isFavouriteContact: false,
    isActive: false,
    isSender: true,
  ),
  UserProfileModel(
    name: 'Deni',
    image: 'assets/images/5.jpeg',
    message: 'lorem ipsum dolor ...',
    lastSent: '1',
    isFavouriteContact: false,
    isActive: false,
    isSender: true,
  ),
];
