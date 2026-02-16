class ChatMessage {
  final String text;
  final String role;
  final String avatarUrl;

  ChatMessage({required this.text, required this.role, required this.avatarUrl});
}

List<ChatMessage> dummyMessages = [
  ChatMessage(text: "I noticed you seemed na bit quiet after soccer practice yesterday. I’m here if you want to talk about it.", role: "Parent", avatarUrl: "assets/images/Authentication/teenPic.png"),
  ChatMessage(text: "Yeah, it was just a really tough session. I felt like i couldn’t get anything right today and coach was being extra hard on me.", role: "Child", avatarUrl: "assets/images/Home/mother_soon.png"),
  ChatMessage(text: "I really like how yoy handled that difficult homework assignment yesterday. you stayed so patient.", role: "Parent", avatarUrl: "assets/images/Authentication/teenPic.png"),
  ChatMessage(text: "Thanks! it was hard but i remembered what we talked about. I felt proud of my self too.", role: "Child", avatarUrl: "assets/images/Home/mother_soon.png"),
];