class ChatModel {
  final profilePics;
  final title;
  final massages;
  final time;

  ChatModel(
      {required this.profilePics,
      required this.title,
      required this.massages,
      required this.time});
}

List<ChatModel> ChatList = [
  ChatModel(
      profilePics:
          'https://cloudfront-us-east-2.images.arcpublishing.com/reuters/ZKNG6B3LRRPKVETHYF4GQMYZJ4.jpg',
      title: 'Hammad',
      massages: 'Salam Alyikum',
      time: '7:00',),
      ChatModel(
      profilePics:
          'https://cloudfront-us-east-2.images.arcpublishing.com/reuters/ZKNG6B3LRRPKVETHYF4GQMYZJ4.jpg',
      title: 'Aryan',
      massages: 'Hi',
      time: '7:00'),
      ChatModel(
      profilePics:
          'https://cloudfront-us-east-2.images.arcpublishing.com/reuters/ZKNG6B3LRRPKVETHYF4GQMYZJ4.jpg',
      title: 'Hadi',
      massages: 'khana huo?',
      time: '7:00'),
      ChatModel(
      profilePics:
          'https://cloudfront-us-east-2.images.arcpublishing.com/reuters/ZKNG6B3LRRPKVETHYF4GQMYZJ4.jpg',
      title: 'Sami',
      massages: 'hi uni ka kam kar leyia',
      time: '7:00'),
      ChatModel(
      profilePics:
          'https://cloudfront-us-east-2.images.arcpublishing.com/reuters/ZKNG6B3LRRPKVETHYF4GQMYZJ4.jpg',
      title: 'Hurrara',
      massages: 'hello',
      time: '7:00'),
];
