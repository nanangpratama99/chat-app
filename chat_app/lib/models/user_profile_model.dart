class UserProfileModel {
  String name;
  String image;
  String message;
  String lastSent;

  UserProfileModel(
      {required this.name,
      required this.image,
      required this.message,
      required this.lastSent});
}

List<UserProfileModel> userProfileData = [
  UserProfileModel(
    name: 'Ambar',
    image: 'assets/images/1.jpeg',
    message: 'lorem ipsum dolor ...',
    lastSent: '8',
  ),
  UserProfileModel(
    name: 'Leo',
    image: 'assets/images/2.jpeg',
    message: 'lorem ipsum dolor ...',
    lastSent: '3',
  ),
  UserProfileModel(
    name: 'Reni',
    image: 'assets/images/3.jpeg',
    message: 'lorem ipsum dolor ...',
    lastSent: '1',
  ),
  UserProfileModel(
    name: 'Adi',
    image: 'assets/images/4.jpeg',
    message: 'lorem ipsum dolor ...',
    lastSent: '2',
  ),
  UserProfileModel(
    name: 'Deni',
    image: 'assets/images/5.jpeg',
    message: 'lorem ipsum dolor ...',
    lastSent: '1',
  ),
];
